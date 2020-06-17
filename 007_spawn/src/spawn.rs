use std::env;
use std::process::{Command, Stdio};

fn main() {
    let mut args: Vec<String> = env::args().skip(1).collect();
    let cmd = args.get(0).expect("argument required");
    let child = Command::new(cmd)
        .args(&mut args[1..])
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .expect("failed to execute child");
    let output = child.wait_with_output().expect("failed to wait child");

    println!("{}", output.status.code().unwrap().to_string());
    print!("{}", String::from_utf8(output.stdout).unwrap());
    print!("{}", String::from_utf8(output.stderr).unwrap());
}
