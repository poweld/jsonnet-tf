import json
import os
import subprocess
import tempfile
import time

def main():
  project_dir = os.getcwd()
  if os.path.isfile(f"{project_dir}/schema.json"):
    print("schema already exists, skipping download")
  else:
    with tempfile.TemporaryDirectory() as tempdir:
      print(f"created temporary directory {tempdir}")

      main_tf = {
        "terraform": {
          "required_providers": {
            "aws": {
              "source":"hashicorp/aws",
              "version": "~> 5.91"
            }
          },
      
          "required_version": ">= 1.12.1"
        }
      }
      main_tf_json = json.dumps(main_tf)
      print(main_tf_json)
      with open(f"{tempdir}/main.tf.json", "w") as main_tf_json_file:
        main_tf_json_file.write(main_tf_json)
        main_tf_json_file.flush()

      # subprocess.run(args=["ls"], cwd=tempdir)
      subprocess.run(args=["terraform", "init"], cwd=tempdir)
      with open(f"{tempdir}/schema.json", "w") as schema_file:
        subprocess.run(args=["terraform", "providers", "schema", "-json"], cwd=tempdir, stdout=schema_file)
        schema_file.flush()

      # os.chdir(project_dir)  # return to this project's dir

      subprocess.run(args=["mv", f"{tempdir}/schema.json", f"{project_dir}/"])


if __name__ == '__main__':
  main()
