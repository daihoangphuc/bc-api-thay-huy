using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Http;

namespace HTSV.FE.Models.NguoiDung
{
    public class RegisterModel
    {
        [Required(ErrorMessage = "Vui lòng nhập mã số sinh viên")]
        [Display(Name = "Mã số sinh viên")]
        public string MaSoSinhVien { get; set; } = string.Empty;

        [Required(ErrorMessage = "Vui lòng nhập email")]
        [EmailAddress(ErrorMessage = "Email không hợp lệ")]
        [Display(Name = "Email")]
        public string Email { get; set; } = string.Empty;

        [Required(ErrorMessage = "Vui lòng nhập mật khẩu")]
        [StringLength(100, ErrorMessage = "{0} phải có ít nhất {2} ký tự.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Mật khẩu")]
        public string MatKhau { get; set; } = string.Empty;

        [DataType(DataType.Password)]
        [Display(Name = "Xác nhận mật khẩu")]
        [Compare("MatKhau", ErrorMessage = "Mật khẩu và xác nhận mật khẩu không khớp.")]
        public string XacNhanMatKhau { get; set; } = string.Empty;

        [Required(ErrorMessage = "Vui lòng nhập họ tên")]
        [Display(Name = "Họ tên")]
        public string HoTen { get; set; } = string.Empty;

        [Required(ErrorMessage = "Vui lòng nhập số điện thoại")]
        [Phone(ErrorMessage = "Số điện thoại không hợp lệ")]
        [Display(Name = "Số điện thoại")]
        public string SoDienThoai { get; set; } = string.Empty;

        [Required(ErrorMessage = "Vui lòng chọn lớp")]
        [Display(Name = "Lớp")]
        public int LopHocId { get; set; }

        [Display(Name = "Ảnh đại diện")]
        public IFormFile? AnhDaiDien { get; set; }

        public string? AnhDaiDienPath { get; set; }
    }
} 