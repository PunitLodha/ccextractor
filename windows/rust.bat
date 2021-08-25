cd ..\src\rust
rustup install stable-i686-pc-windows-gnu
set CARGO_TARGET_DIR = "..\..\windows" && rustup run stable-i686-pc-windows-gnu cargo build
cd ..\..\windows
dir
copy debug\ccx_rust.lib .\ccx_rust.lib