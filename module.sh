if [ -d "${BUILT_PRODUCTS_DIR}/MobileFramework" ]; then
echo "${BUILT_PRODUCTS_DIR}/MobileFramework directory already exists, so skipping the rest of the script."
exit 0
fi

mkdir -p "${BUILT_PRODUCTS_DIR}/MobileFramework"
cat <<EOF > "${BUILT_PRODUCTS_DIR}/MobileFramework/module.modulemap"
module MobileFramework {
    header "${PROJECT_DIR}/MobileFramework.framework/Headers/MobileFramework.h"
    export *
}
EOF
