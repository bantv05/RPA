-- Dữ liệu cho bảng tai_khoan
-- use ql_toa_nha;
use qltoanhacaooc;
INSERT INTO tai_khoan (ho_ten, mat_khau, role, ten_dang_nhap, token) VALUES
('Trịnh Văn Ban', '123456', 1, 'TrinhVanBan', NULL),
('Lê Văn A', '123456', 2, 'levana', NULL),
('Nguyễn Toàn Trung', 'abcdef', 1, 'NguyenToanTrung', NULL);

-- Dữ liệu cho bảng khach_hang
INSERT INTO khach_hang (cccd, dia_chi, ho_ten, sdt, id_tai_khoan) VALUES
('123456789012', '123 Đường ABC, Đà Nẵng', 'Lê Văn A', '0901234567', 2),
('234567890123', '789 Đường UVW, Đà Nẵng', 'Trịnh Văn Ban', '0912345678', 1),
('345678901234', '101 Đường GHI, Hội An', 'Nguyễn Toàn Trung', '0987654321', 3),
('456789012345', '222 Đường LMN, Đà Nẵng', 'Lê Thị F', '0903334445', NULL),
('567890123456', '333 Đường PQR, Hội An', 'Phạm Văn G', '0977889900', NULL),
('678901234567', '444 Đường STU, Đà Nẵng', 'Trần Thị H', '0933221144', NULL),
('789012345678', '555 Đường XYZ, Hội An', 'Nguyễn Văn I', '0988776655', NULL),
('890123456789', '666 Đường ABC, Đà Nẵng', 'Lê Thị K', '0944556677', NULL),
('901234567890', '777 Đường DEF, Hội An', 'Phạm Văn L', '0922334455', NULL),
('012345678999', '888 Đường GHI, Đà Nẵng', 'Trần Thu M', '0966778899', NULL);

-- Dữ liệu cho bảng loai_phong
INSERT INTO loai_phong (ten_loai_phong) VALUES
('Thường'),
('Cao cấp');

-- Dữ liệu cho bảng tinh_trang_phong
INSERT INTO tinh_trang_phong (ten_tinh_trang) VALUES
('Hoạt động'),
('Tạm ngưng');

-- Dữ liệu cho bảng cu_dan_luu_tru
INSERT INTO cu_dan_luu_tru (cccd, dia_chi, ho_ten, sdt) VALUES
('0123456789', 'Địa chỉ A', 'Nguyễn Văn X', '0912345678'),
('9876543210', 'Địa chỉ B', 'Trần Thị Y', '0987654321'),
('1112223334', 'Địa chỉ C', 'Lê Thị Z', '0901122334'),
('4445556667', 'Địa chỉ D', 'Phạm Văn W', '0977889901'),
('7778889990', 'Địa chỉ E', 'Hoàng Thu V', '0933445566'),
('0009998887', 'Địa chỉ F', 'Bùi Ngọc U', '0966554433'),
('1231234567', 'Địa chỉ G', 'Đỗ Phương T', '0922113344'),
('7654321098', 'Địa chỉ H', 'Cao Quang S', '0955224433'),
('9876543219', 'Địa chỉ I', 'Mai Thùy R', '0944335522'),
('1122334455', 'Địa chỉ J', 'Trịnh Bảo Q', '0999001122');

-- Dữ liệu cho bảng phong
INSERT INTO phong (so_phong, tang, id_hop_dong, id_loai_phong, id_trang_thai_phong) VALUES
(101, '1', 1, 1, 1, 1),
(102, '1', 1, 2, 2, 2),
(103, '1', 2, 1, 1, 1),
(104, '1', 3, 2, 2, 1),
(105, '1', 5, 1, 3, 1),
(202, '2', 6, 2, 4, 1),
(203, '2', 5, 1, 5, 1),
(204, '2', 3, 2, 6, 1),
(205, '2', 2, 1, 7, 1),
(301, '3', 9, 1, 8, 1),
(302, '3', 7, 2, 9, 1),
(303, '3', 6, 1, 10, 1),
(304, '3', 6, 2, 1, 1),
(305, '3', 4, 2, 2, 1),
(401, '4', NULL, 1, 3, 1),
(402, '4', NULL, 2, 4, 1),
(403, '4', NULL, 2, 5, 1),
(404, '4', NULL, 1, 6, 1),
(405, '4', NULL, 2, 7, 1),
(501, '5', NULL, 2, 8, 1),
(502, '5', 8, 1, 9, 1),
(503, '5', NULL, 2, 10, 1),
(504, '5', 5, 2, 1, 1),
(505, '5', NULL, 1, 2, 1);

-- Dữ liệu cho bảng luu_tru_phong
INSERT INTO luu_tru_phong (so_luong_em_be, so_luong_nguoi_lon, so_luong_tre_em, , id_phong, id_cu_dan_luu_tru) VALUES
(0, 2, 0),
(1, 2, 0),
(0, 2, 2),
(0, 3, 1),
(1, 3, 0),
(0, 4, 0),
(2, 2, 1),
(1, 4, 0),
(0, 5, 0), 
(0, 3, 2);
-- Dữ liệu cho bảng hop_dong
INSERT INTO hop_dong (ngay_thue, ngay_tra, id_khach_hang) VALUES
('2025-04-25 10:00:00', '2025-04-27 12:00:00', 1),
('2025-04-23 14:00:00', '2025-04-26 11:00:00', 2),
('2025-04-24 09:00:00', '2025-04-27 15:00:00', 3),
('2025-04-25 16:00:00', '2025-04-28 10:00:00', 4),
('2025-04-26 11:00:00', '2025-04-29 13:00:00', 5),
('2025-04-27 18:00:00', '2025-04-30 17:00:00', 6),
('2025-04-28 12:00:00', '2025-05-01 09:00:00', 7),
('2025-05-02 09:30:00', '2025-05-05 16:30:00', 1),
('2025-05-03 13:00:00', '2025-05-06 10:00:00', 3),
('2025-05-04 19:00:00', '2025-05-07 12:00:00', 5),
('2025-05-05 11:30:00', '2025-05-08 14:30:00', 7),
('2025-05-05 11:30:00', '2025-05-08 14:30:00', 8),
('2025-05-06 16:30:00', '2025-05-09 09:30:00', 9);

-- Dữ liệu cho bảng dich_vu
INSERT INTO dich_vu (gia_dv, ten_dv) VALUES
(50000, 'Giặt là'),
(20000, 'Nước uống'),
(100000, 'Thuê xe máy');

-- Dữ liệu cho bảng hoa_don
INSERT INTO hoa_don (ngay_thue, ngay_tra, so_tien_uoc_tinh, id_hop_dong) VALUES
('2025-04-25 10:00:00', '2025-04-27 12:00:00', 2500000, 1),
('2025-04-23 14:00:00', '2025-04-26 11:00:00', 3800000, 2),
('2025-04-24 09:00:00', '2025-04-27 15:00:00', 1050000, 3),
('2025-04-25 16:00:00', '2025-04-28 10:00:00', 3100000, 4),
('2025-04-26 11:00:00', '2025-04-29 13:00:00', 4500000, 5),
('2025-04-27 18:00:00', '2025-04-30 17:00:00', 6000000, 6),
('2025-04-28 12:00:00', '2025-05-01 09:00:00', 2800000, 7),
('2025-04-29 15:00:00', '2025-05-02 19:00:00', 7000000, 8),
('2025-04-30 10:00:00', '2025-05-03 14:00:00', 3500000, 9),
('2025-05-01 17:00:00', '2025-05-04 11:00:00', 4800000, 10);

-- Dữ liệu cho bảng phieuthu
INSERT INTO phieuthu (so_luong, tong_tien, id_dich_vu, id_hop_dong) VALUES
(3, 150000, 1, 2),
(1, 30000, 2, 2),
(2, 200000, 3, 3),
(1, 75000, 2, 4),
(4, 80000, 1, 5),
(2, 50000, 2, 6),
(1, 150000, 3, 7),
(3, 60000, 1, 8),
(2, 160000, 3, 9),
(1, 40000, 2, 10);

-- danh sách đăng ký hợp đồng 
SELECT
    hd.mahop_dong AS Ma,
    kh.ho_ten AS HoTenKhachHang,
    kh.sdt AS SDTKhachHang,
    GROUP_CONCAT(DISTINCT p.so_phong ORDER BY p.so_phong SEPARATOR ', ') AS DanhSachPhong,
    GROUP_CONCAT(DISTINCT lp.ten_loai_phong ORDER BY p.so_phong SEPARATOR ', ') AS LoaiPhong,
    MIN(hd.ngay_thue) AS NgayDat -- Lấy ngày thuê sớm nhất của hợp đồng làm ngày đặt
FROM
    hop_dong hd
JOIN
    khach_hang kh ON hd.id_khach_hang = kh.ma_khach_hang
LEFT JOIN
    phong p ON hd.mahop_dong = p.id_hop_dong
LEFT JOIN
    loai_phong lp ON p.id_loai_phong = lp.ma_loai_phong
GROUP BY
    hd.mahop_dong, kh.ma_khach_hang
ORDER BY
    hd.mahop_dong DESC;

-- thêm hợp đồng  
INSERT INTO hop_dong (ngay_thue, ngay_tra, id_khach_hang) VALUES
(NOW(), DATE_ADD(NOW(), INTERVAL 2 DAY), 1);
-- Giả sử ngày thuê là hiện tại, trả sau 2 ngày, và id_khach_hang là 1
-- lấy danh sách phòng
SELECT
    p.so_phong AS TenPhong,
    p.gia AS GiaPhong,
    lp.ten_loai_phong AS LoaiPhong,
    p.tang AS ViTriTang,
    ttp.ten_tinh_trang AS TrangThai
FROM
    phong p
JOIN
    loai_phong lp ON p.id_loai_phong = lp.ma_loai_phong
JOIN
    tinh_trang_phong ttp ON p.id_trang_thai_phong = ttp.id_tinh_trang_phong
ORDER BY
    p.so_phong;
    
-- lấy danh sách cư danh lưu trú
SELECT
    cd.ma_cu_dan_luu_tru AS MaCuDan,
    cd.ho_ten AS TenCuDan,
    -- Giả định có trường 'anh_dai_dien' trong bảng 'cu_dan_luu_tru'
    -- cd.anh_dai_dien AS AnhDaiDien,
    p.so_phong AS Phong,
    cd.sdt AS SoDienThoai,
    cd.dia_chi AS DiaChiCuDan, -- Thêm địa chỉ nếu cần
    -- Giả định có trường 'thoi_gian_tao' và 'thoi_gian_cap_nhat'
    -- cd.thoi_gian_tao AS ThoiGianTao,
    -- cd.thoi_gian_cap_nhat AS ThoiGianCapNhat
    '16:30 - 20/10/2024' AS ThoiGianTao, -- Dữ liệu mẫu vì không có trường thời gian rõ ràng
    '16:30 - 20/10/2024' AS ThoiGianCapNhat -- Dữ liệu mẫu vì không có trường thời gian rõ ràng
FROM
    cu_dan_luu_tru cd
LEFT JOIN
    luu_tru_phong ltp ON cd.id_luu_tru_phong = ltp.ma_luu_tru
LEFT JOIN
    phong p ON ltp.ma_luu_tru = p.id_luu_tru_phong
LEFT JOIN
    tai_khoan tk_tao ON cd.cccd = tk_tao.ten_dang_nhap -- Giả định 'cccd' có thể liên kết với người tạo (cần kiểm tra)
LEFT JOIN
    tai_khoan tk_capnhat ON cd.sdt = tk_capnhat.ten_dang_nhap -- Giả định 'sdt' có thể liên kết với người cập nhật (cần kiểm tra)
ORDER BY
    cd.ma_cu_dan_luu_tru DESC; 

