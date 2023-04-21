for /f "delims=" %%i in ('cd') do set output=%%i
set CARGO_TARGET_DIR=%output%
set profile=
if [%1]==[] goto :build
if %1==release set profile=--release
:build
cd ..\src\rust
cargo build --features "hardsubx_ocr" --target x86_64-pc-windows-msvc %profile%
cd ..\..\windows
copy x86_64-pc-windows-msvc\debug\ccx_rust.lib .\ccx_rust.lib