

# ================================
# CONFIGURATION À ADAPTER
# ================================
$xsaFile        = "C:\\Users\\Cyprien\\Documents\\GitHub\\SII\\KV260_DPU_ASPERA\\prj\\Vivado\\hw\\pre-built\\ASPERA_HW_DESCRIPTION.xsa"
$outputDir      = "C:\\Users\\Cyprien\\Documents\\GitHub\\SII\\KV260_DPU_ASPERA\\prj\\Vivado\\hw\\pre-built\\sdt_outdir"
$boardDts       = "zynqmp-sm-k26-reva"        # ou "" si pas nécessaire
$customDtsi     = "" # ou "" si pas utilisé
$customSdtRepo  = "C:\\Users\\Cyprien\\Documents\\GitHub\\SII\system-device-tree-xlnx"
$xsctPath       = ""

# ================================
# 1) CONFIGURE ENV VAR CUSTOM SDT REPO
# ================================
if (Test-Path $customSdtRepo) {
    $env:CUSTOM_SDT_REPO = $customSdtRepo
    Write-Host "✔ CUSTOM_SDT_REPO défini : $customSdtRepo"
}

# ================================
# 2) CRÉATION DU SCRIPT TCL TEMPORAIRE
# ================================
$tclFile = [System.IO.Path]::GetTempFileName().Replace(".tmp", ".tcl")

@"
sdtgen set_dt_param -xsa "$xsaFile" -dir "$outputDir"
"@ | Out-File -FilePath $tclFile -Encoding utf8

if ($boardDts -ne "") {
    Add-Content $tclFile "sdtgen set_dt_param -board_dts $boardDts"
}

if ($customDtsi -ne "") {
    Add-Content $tclFile "sdtgen set_dt_param -include_dts $customDtsi"
}

@"
sdtgen set_dt_param -trace enable
sdtgen set_dt_param -debug enable
sdtgen generate_sdt
"@ | Add-Content $tclFile

# ================================
# 3) EXÉCUTION AVEC XSCT
# ================================
Write-Host "⏳ Génération du System Device Tree en cours..."
& xsct "$tclFile"

Write-Host "✅ Terminé ! Fichiers SDT dans : $outputDir"
Write-Host "💡 Fichier TCL utilisé : $tclFile"

