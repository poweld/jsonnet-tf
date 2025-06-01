use std::process::Command;
use std::env;
use std::str;
use uuid::Uuid;
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
  let tmpdir = mktemp().expect("failed to create tmp dir");
  let _ = fs::remove_dir_all(tmpdir);
}

fn mktemp() -> std::io::Result<String> {
  let os_tmp = env::temp_dir();
  let os_tmp_str = os_tmp.display();
  let id = Uuid::new_v4();
  let temp = format!("{os_tmp_str}/{id}");
  fs::create_dir(&temp)?;
  Ok(temp)
}
