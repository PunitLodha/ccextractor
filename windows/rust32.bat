cd ..\src\rust
set CARGO_TARGET_DIR = "..\..\windows" && cargo build --target=i686-pc-windows-msvc
cd ..\..\windows
copy debug\ccx_rust.lib .\ccx_rust.lib