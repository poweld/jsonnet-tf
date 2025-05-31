use std::process::Command;
use std::env;
use std::str;
use uuid::Uuid;
use std::path;
use std::fs;

fn main() {
  let output = Command::new("sh")
    .arg("-c")
    .arg("terraform providers schema -json")
    .output()
    .expect("failed to export schema");
  let output = str::from_utf8(&output.stdout)
    .expect("failed to convert output to str");
  println!("{output}");
  //let tmp = mktemp();
  mktemp();
}

fn mktemp() { // -> std::io::Result<Path> {
  let os_tmp = env::temp_dir();
  let os_tmp_str = os_tmp.display();
  // println!("Temporary directory: {}", osTmp.display());
  let id = Uuid::new_v4();
  println!("{:?}", id);
  println!("{os_tmp_str}/{id}");
  fs::create_dir("{osTmp}/{id}");
}
