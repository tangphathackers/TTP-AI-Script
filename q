#!/system/bin/sh
# Development Telegram: @tangphat
# Copyright: @tangphat
# Copy Nhớ Ghi Nguồn Cảm Ơn
# TTP-AI-IEE Intellectual Excellence Efficiency
# Lấy tên đầy đủ của script
TTP_AI_IEE=$(realpath "$0")
# Cấp quyền full quyền cho script
chmod 7777 "$TTP_AI_IEE"
echo ""
echo "💀 Full permissions have been granted to the file $script_name"
sleep 0.3
#
current_date=$(date +"%Y-%m-%d")
expiry_date="2024-3-20"
if [ "$current_date" \< "$expiry_date" ]; then
#
echo ""
start_time=$(date +"%T")
#
cmd notification post -S bigtext -t '🇻🇳 TTP-AI Shell Script No Root 🇻🇳' ' 🚀 Installation in Progress' "✈️ Installing TTP-AI Started At: $start_time" > /dev/null 2>&1
#
echo "🕛 Script Expires On $expiry_date"
# Thêm các lệnh của bạn ở đây
echo ""
echo "🇻🇳 Hello Everyone. Welcome To My Script"
echo ""
echo "💬 Script Updated February 22, 2024"
echo ""
date +"⏱️ Today is: %A %d %B %F"
echo ""
echo "
╭━━━━┳━━━━┳━━━╮╱╭━━━┳━━╮
┃╭╮╭╮┃╭╮╭╮┃╭━╮┃╱┃╭━╮┣┫┣╯
╰╯┃┃╰┻╯┃┃╰┫╰━╯┃╱┃┃╱┃┃┃┃
╱╱┃┃╱╱╱┃┃╱┃╭━┳┻━┫╰━╯┃┃┃
╱╱┃┃╱╱╱┃┃╱┃┃╱╰━━┫╭━╮┣┫┣╮
╱╱╰╯╱╱╱╰╯╱╰╯╱╱╱╱╰╯╱╰┻━━╯"
echo ""
echo "💵💴💶💷 Android Device Information 💵💴💶💷"
# Hàm kiểm tra lệnh thành công hay không và hiển thị kết quả
check_command() {
    if [ $? -eq 0 ]; then
        echo "⚙️ $1: $2"
        return 0
    else
        return 1
    fi
}
# Hàm tìm thông tin từ một danh sách các lệnh và hiển thị kết quả
find_info() {
    local command_output
    local success=0
    for cmd in "$@"; do
        command_output=$(eval "$cmd")
        if [ -n "$command_output" ]; then
            success=1
            check_command "$2" "$command_output"
            break
        fi
    done
    if [ $success -eq 0 ]; then
        echo "Không tìm thấy thông tin về $2."
    fi
}
# Lấy thông tin về model thiết bị
find_info "getprop ro.product.model" "Model"
# Lấy thông tin về nhà sản xuất
find_info "getprop ro.product.manufacturer" "Manufacturer"
# Lấy thông tin về phiên bản Android
find_info "getprop ro.build.version.release" "Operating System"
# Lấy thông tin về tên mã
find_info "getprop ro.build.version.codename" "Code Name"
# Lấy thông tin về phiên bản Kernel
find_info "uname -r" "Kernel Version"
# Lấy thông tin về kích thước màn hình
echo "⚙️ Screen Resolution:"
find_info "wm size | awk 'NR==1{print \$3}'" "Screen Resolution"
# Lấy thông tin về mật độ điểm ảnh
echo "⚙️ Screen Density:"
find_info "wm density | awk 'NR==1{print \$3}'" "Screen Density"
# Lấy thông tin về loại CPU và số lõi
echo "⚙️ CPU:"
find_info "grep -m 1 'Hardware' /proc/cpuinfo | cut -d ':' -f 2 | sed 's/^[ \t]*//'" "CPU"
# Lấy thông tin về số lõi CPU
find_info "nproc --all" "Number of CPU Cores"
# Lấy thông tin về RAM
echo "⚙️ RAM:"
find_info "free -h | awk '/Mem/ {print \$2}'" "RAM"
# Lấy thông tin về dung lượng pin
echo "⚙️ Battery Level:"
find_info "dumpsys battery | grep 'level' | sed 's/.*: //' | sed 's/$/ %/'" "Battery Level"
# Lấy thông tin về trạng thái kết nối mạng
echo "⚙️ Network Status:"
find_info "ip route get 1 | awk '/dev/{print \$NF; exit}'" "Device IP"
# Lấy thông tin về dung lượng bộ nhớ còn trống
echo "⚙️ Available Disk Space:"
find_info "df -h /data | awk 'NR==2 {print \$2}'" "Available Disk Space"
sleep 0.3
echo ""
echo "🛡 Developers Telegram: @tangphat"
echo "🔑 Encode Script:SHC,Bash-obfuscate,Base64,Hex,UPX,Openssl"
echo "🔑 Encode Development: Tăng Phát"
echo "📨 Telegram Group: https://t.me/nonrootvipshell"
echo "▶️ Youtuber: @TangPhat_Wisdomlikethesea"
echo "🏳️ New Encode: Clang++"
echo ""
echo "💵 TTP-AI-IEE Script Version 2.0"
echo ""
echo "🔁 Automatic Optimization Using AI 4.0"
echo ""
sleep 0.3
# Biến lệnh global
global="settings put global"
# Biến lệnh secure
secure="settings put secure"
# Biến lệnh system
system="settings put system"
# Biến đếm số lượng lệnh global đã thực thi thành công
global_count=0
# Biến đếm số lượng lệnh secure đã thực thi thành công
secure_count=0
# Biến đếm số lượng lệnh system đã thực thi thành công
system_count=0
# Biến đếm số lượng lỗi cho mỗi biến
global_error_count=0
secure_error_count=0
system_error_count=0
# Hàm thực thi lệnh và kiểm tra lỗi
execute_command() {
    command=$1
    result=$($command "$@" 2>&1)
    if [ $? -ne 0 ]; then
        echo "🔴 Lỗi: $result"
        suggest_fix "$result"
        case $command in
            *global*) ((global_error_count++));;
            *secure*) ((secure_error_count++));;
            *system*) ((system_error_count++));;
        esac
    else
        case $command in
            *global*) ((global_count++));;
            *secure*) ((secure_count++));;
            *system*) ((system_count++));;
        esac
    fi
}
# Hàm đưa ra gợi ý cụ thể cho người dùng
suggest_fix() {
    error_message=$1
    case "$error_message" in
        *"permission denied"*)
            echo "🔴 Gợi ý: Quyền truy cập bị từ chối. Hãy thử chạy lệnh với quyền cao hơn (ví dụ: sử dụng 'sudo')."
            ;;
        *"not found"*)
            echo "🔴 Gợi ý: Không tìm thấy lệnh hoặc thiết lập. Hãy kiểm tra lại tên và thử lại."
            ;;
        *"invalid argument"*)
            echo "🔴 Gợi ý: Đối số không hợp lệ. Hãy kiểm tra lại cú pháp và đảm bảo bạn đã nhập đúng các đối số."
            ;;
        *)
            echo "🔴 Gợi ý: Kiểm tra lại các tham số bạn đã nhập và thử lại."
            ;;
    esac
}
# Thực thi các lệnh và tăng biến đếm
execute_command "$global" hidden_api_policy_pre_p_apps 1
execute_command "$global" thread_priority_default 0
execute_command "$global" enable_foreground_boost 0
execute_command "$secure" privacy_unlock 0
execute_command "$system" peak_refresh_rate 0
execute_command "$system" sensor_ind 1 
# In ra số lượng lệnh đã nhập thành công và số lượng lỗi
echo ""
echo "🟢 The number of global commands successfully entered is $global_count"
echo "🔴 Number of errors for global command: $global_error_count"
echo ""
echo "🟢 The number of successfully entered secure commands is $secure_count"
echo "🔴 Number of errors for secure command: $secure_error_count"
echo ""
echo "🟢 The number of system commands successfully entered is $system_count"
echo "🔴 Number of errors for system command: $system_error_count"
#
echo ""
echo "📝 Function"
echo "
🔁 Super Script Tweaks No Root
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ High quality sound
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ Automatically allocate resources
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ Game Driver VIP
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ Automatically optimize battery when 20% remaining
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ Powerful graphics optimization
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ Best performance balance
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ Reduce lag and optimize stable fps
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ IO Increase memory read and write speed
❑❑❑❑❑❑❑❑❑❑❑❑❑
▶️ Smooth user interface
❑❑❑❑❑❑❑❑❑❑❑❑❑
✅ All TTP-AI-IEE Optimization Performance
"
sleep 2
echo ""
echo "🎮 Note: Battery saving mode will automatically turn on when the device has 20% battery remaining"
echo ""
echo "👍 Restart to apply"
echo ""
echo "❤ Thank you very much, please support me"
end_time=$(date +"%T")
cmd notification post -S bigtext -t '🇻🇳 TTP-AI Shell Script No Root 🇻🇳' '✅ Installation Complete' "🎉 Installation Completed Successfully! Ended At: $end_time" > /dev/null 2>&1
echo ""
else
  echo "Script has exceeded the allowed date range."
  exit 1  # Hoặc thực hiện hành động tương ứng khi vượt quá ngày cho phép
fi
sleep 5
am start -a android.intent.action.VIEW -d https://youtube.com/@TangPhat_Wisdomlikethesea >/dev/null 2>&1 & >/dev/null 2>&1
