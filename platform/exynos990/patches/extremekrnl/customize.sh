# Link atualizado para o repositório do redmax19
KERNEL_REPO="https://github.com/redmax19/android_kernel_samsung_exynos990/releases/latest/download"

LOG_STEP_IN "- Downloading redmax19 kernel"

# Remove arquivos antigos para evitar conflitos
if [ -f "$WORK_DIR/kernel/boot.img" ]; then
    rm -f "$WORK_DIR/kernel/boot.img"
fi
if [ -f "$WORK_DIR/kernel/dtbo.img" ]; then
    rm -f "$WORK_DIR/kernel/dtbo.img"
fi

# Baixa os novos arquivos
DOWNLOAD_FILE "$KERNEL_REPO/boot.img" "$WORK_DIR/kernel/boot.img"
DOWNLOAD_FILE "$KERNEL_REPO/dtbo.img" "$WORK_DIR/kernel/dtbo.img"

unset KERNEL_REPO
LOG_STEP_OUT