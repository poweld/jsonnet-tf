#!/usr/bin/env python3
import os
import sys
import shutil
import subprocess
import filecmp
import difflib
from pathlib import Path


def run_jsonnet_tf():
    """Run the jsonnet-tf command to generate the output files."""
    # Clear the artifacts directory before running the command
    artifacts_dir = Path("artifacts")
    if artifacts_dir.exists():
        for item in artifacts_dir.iterdir():
            if item.is_file():
                item.unlink()
            else:
                shutil.rmtree(item)
    
    # Copy the schema.json from tests/input to artifacts
    shutil.copy("tests/input/schema.json", "artifacts/schema.json")
    
    # Run the jsonnet-tf command
    result = subprocess.run([
        "./jsonnet-tf",
        "--provider", "okta/okta",
        "--provider-version", "~> 5.3.0",
        "--terraform-version", ">= 1.12.1"
    ], capture_output=True, text=True)
    
    if result.returncode != 0:
        print(f"Error running jsonnet-tf: {result.stderr}")
        return False
    
    return True


def compare_directories(dir1, dir2):
    """
    Compare two directories recursively and return list of differences.
    Returns a tuple of (missing_files, different_files)
    """
    missing_files = []
    different_files = []
    
    # Convert to Path objects
    dir1 = Path(dir1)
    dir2 = Path(dir2)
    
    # Walk through the expected directory
    for path in dir1.glob("**/*"):
        if path.is_file():
            # Get relative path from the base directory
            rel_path = path.relative_to(dir1)
            output_path = dir2 / rel_path
            
            # Check if file exists in output
            if not output_path.exists():
                missing_files.append(str(rel_path))
            else:
                # Compare file contents
                if not filecmp.cmp(path, output_path, shallow=False):
                    different_files.append(str(rel_path))
    
    return missing_files, different_files


def show_file_diff(expected_file, actual_file):
    """Show the differences between two files."""
    with open(expected_file, 'r') as f1, open(actual_file, 'r') as f2:
        expected_lines = f1.readlines()
        actual_lines = f2.readlines()
    
    diff = difflib.unified_diff(
        expected_lines, 
        actual_lines,
        fromfile=f'expected/{os.path.basename(expected_file)}',
        tofile=f'actual/{os.path.basename(actual_file)}',
    )
    
    return ''.join(diff)


def main():
    """Run the end-to-end test for jsonnet-tf."""
    print("Running jsonnet-tf end-to-end test...")
    
    # Run jsonnet-tf command
    if not run_jsonnet_tf():
        print("Failed to run jsonnet-tf command.")
        return 1
    
    # Compare the expected directory with the artifacts directory
    expected_dir = "tests/expected/registry.terraform.io"
    actual_dir = "artifacts/registry.terraform.io"
    
    missing_files, different_files = compare_directories(expected_dir, actual_dir)
    
    if not missing_files and not different_files:
        print("Test passed! Generated files match expected output.")
        return 0
    else:
        print("Test failed!")
        
        if missing_files:
            print(f"\nMissing files ({len(missing_files)}):")
            for file in missing_files:
                print(f"  - {file}")
        
        if different_files:
            print(f"\nFiles with differences ({len(different_files)}):")
            for file in different_files:
                expected_file = os.path.join(expected_dir, file)
                actual_file = os.path.join(actual_dir, file)
                print(f"  - {file}")
                diff = show_file_diff(expected_file, actual_file)
                print(diff)
        
        return 1


if __name__ == "__main__":
    sys.exit(main())