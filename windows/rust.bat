for /f "delims=" %%i in ('cd') do set output=%%i
set CARGO_TARGET_DIR=%output%
set profile=
if [%1]==[] goto :build
if %1==release set profile=--release
:build
cd ..\src\rust
cargo build %profile%
cd ..\..\windows
copy debug\ccx_rust.lib .\ccx_rust.lib