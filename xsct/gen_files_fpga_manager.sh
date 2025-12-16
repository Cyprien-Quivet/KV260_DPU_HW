#!/usr/bin/env bash

set -e  # stop au premier échec

echo "=== Sourcing PetaLinux 2022.2 ==="
source /home/user/petalinux/2022.2/install/settings.sh

echo "=== Running createdts (XSCT) ==="
xsct << 'EOF'
createdts \
  -hw ../prj/Vivado/hw/pre-built/top_level.xsa \
  -zocl \
  -platform-name KV260 \
  -git-branch xlnx_rel_v2022.2 \
  -overlay \
  -compile \
  -out dt
exit
EOF

echo "=== Compiling overlay with dtc ==="
dtc -@ -O dtb \
  -o ./kv260.dtbo \
  ./dt/dt/KV260/psu_cortexa53_0/device_tree_domain/bsp/pl.dtsi

echo "=== DONE : kv260.dtbo generated ==="

echo "=== Copying dtbo to Vivado outputjob ==="
OUT_DIR="../prj/Vivado/hw/pre-built/output_job"
mkdir -p "${OUT_DIR}"
cp -v ./kv260.dtbo "${OUT_DIR}/"

echo "=== DONE : kv260.dtbo copied to ${OUT_DIR} ==="

echo "=== Copying top_level.bin to outputjob ==="
BIN_SRC="../prj/Vivado/hw/prj/KR260.runs/impl_1_01/top_level.bin"

if [[ ! -f "${BIN_SRC}" ]]; then
  echo "ERROR: ${BIN_SRC} not found"
  exit 1
fi

cp -v "${BIN_SRC}" "${OUT_DIR}/"

echo "=== DONE : dtbo + bin copied to ${OUT_DIR} ==="
