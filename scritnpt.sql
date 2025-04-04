USE [master]
GO
/****** Object:  Database [QLTHITRACNGHIEM]    Script Date: 15-07-2024 9:51:42 PM ******/
CREATE DATABASE [QLTHITRACNGHIEM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTHITRACNGHIEM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLTHITRACNGHIEM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTHITRACNGHIEM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLTHITRACNGHIEM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTHITRACNGHIEM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET RECOVERY FULL 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET  MULTI_USER 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLTHITRACNGHIEM', N'ON'
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLTHITRACNGHIEM]
GO
/****** Object:  User [USERS]    Script Date: 15-07-2024 9:51:42 PM ******/
CREATE USER [USERS] FOR LOGIN [USERS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[TB_ADMIN]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ADMIN](
	[sTAIKHOAN] [varchar](10) NOT NULL,
	[sMATKHAU] [varchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sTAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CAUHOI]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CAUHOI](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[sNOIDUNG] [nvarchar](300) NOT NULL,
	[sA] [nvarchar](100) NOT NULL,
	[sB] [nvarchar](100) NOT NULL,
	[sC] [nvarchar](100) NOT NULL,
	[sD] [nvarchar](100) NOT NULL,
	[sDAPAN] [nvarchar](100) NOT NULL,
	[sMAMON] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_KETQUA]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_KETQUA](
	[iMAKETQUA] [int] IDENTITY(1,1) NOT NULL,
	[sMS] [nvarchar](30) NOT NULL,
	[sHOTENKQ] [nvarchar](50) NOT NULL,
	[sTENMON] [nvarchar](50) NOT NULL,
	[iSOCAUDUNG] [int] NOT NULL,
	[iDIEM] [int] NULL,
	[tNGAYTHI] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iMAKETQUA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_MONTHI]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MONTHI](
	[sMAMON] [nvarchar](20) NOT NULL,
	[sTENMON] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sMAMON] PRIMARY KEY CLUSTERED 
(
	[sMAMON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_USER]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_USER](
	[sMS] [nvarchar](30) NOT NULL,
	[sHOTEN] [nvarchar](50) NOT NULL,
	[tNGAYSINH] [datetime] NOT NULL,
	[sEMAIL] [varchar](255) NOT NULL,
	[sUSERNAME] [varchar](50) NOT NULL,
	[sPASS] [varchar](64) NOT NULL,
 CONSTRAINT [PK_sMS] PRIMARY KEY CLUSTERED 
(
	[sMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TB_ADMIN] ([sTAIKHOAN], [sMATKHAU]) VALUES (N'admin', N'$2a$11$52RRt0kwt/DZ03UMTI7kh.b3QhLA6JU14tmKi0Yw5QzGzBoMoxdTG')
GO
SET IDENTITY_INSERT [dbo].[TB_CAUHOI] ON 

INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (2, N'Đặc điểm cơ bản của lập trình hướng đối tượng thể hiện ở:', N'Tính đóng gói, tính đa hình', N'Tính đóng gói, tính trừu tượng', N'Tính chia nhỏ, tính kế thừa', N'Tính đóng gói, tính kế thừa, tính đa hình, tính trừu tượng', N'Tính đóng gói, tính kế thừa, tính đa hình, tính trừu tượng', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (3, N'Mối quan hệ giữa cấu trúc dữ liệu và giải thuật có thể minh hoạ bằng đẳng thức:', N'Chương trình = Cấu trúc dữ liệu', N'Giải thuật + Chương trình = Cấu trúc dữ liệu', N'Cấu trúc dữ liệu + Chương trình = Giải thuật', N'Cấu trúc dữ liệu + Giải thuật = Chương trình', N'Cấu trúc dữ liệu + Giải thuật = Chương trình', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (4, N'SQL là từ viết tắt của:', N'Structured Query Language', N'Strong Query Language', N'Strong Question Language', N'Structured Query Language', N'Structured Query Language', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (5, N'Cấu hình nào có đặc điểm “các nút sử dụng chung một đường truyền vật lý":', N'Tree', N'Loop', N'Ring', N'Complet', N'Ring', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (6, N'Lệnh cout trong C++ có tác dụng gì?', N'Là stream đầu ra chuẩn trong C++', N'Là lệnh chú thích trong C++', N'Là stream đầu vào chuẩn của C++', N'Là lệnh khai báo một biến', N'Là stream đầu ra chuẩn trong C++', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (7, N'Lệnh cin trong C++ có tác dụng gì?', N'Là lệnh chú thích trong C++', N'Là lệnh khai báo một biến', N'Là stream đầu ra chuẩn trong C++', N'Là stream đầu vào chuẩn của C++', N'Là stream đầu vào chuẩn của C++', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (8, N'Kết thúc một dòng lệnh trong chương trình C++, ta sử dụng ký hiệu gì?', N'Dấu ,', N'Dấu .', N'Dấu :', N'Dấu ;', N'Dấu ;', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (9, N'Đệ quy trong C++ là gì?', N'Là quá trình trong đó một phương thức gọi lại chính nó một cách không liên tiếp', N'Là quá trình trong đó một phương thức gọi lại chính nó một cách liên tiếp', N'Là quá trình trong đó một phương thức không gọi lại chính nó', N'Tất cả đáp án đều sai', N'Là quá trình trong đó một phương thức gọi lại chính nó một cách liên tiếp', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (10, N'Biến cục bộ là dạng biến gì? Chọn câu trả lời đúng nhất.', N'Là biến khai báo trong thân một hàm', N'Là biến khai báo trong thân một khối lệnh', N'Là biến khai báo trong một hàm hoặc một khối lệnh', N'Là biến khai báo trong thân hàm main', N'Là biến khai báo trong một hàm hoặc một khối lệnh', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (11, N'Con trỏ là gì?', N'Là biến điều khiển chuột chạy trên màn hình window', N'Là biến dùng để lưu địa chỉ của biến khác', N'Là biến lưu nội dung của biến khác', N'Không có đáp án đúng', N'Là biến dùng để lưu địa chỉ của biến khác', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (12, N'Để khai báo bộ nhớ động trong C++, ta dùng lệnh nào?', N'new', N'create', N'malloc', N'register', N'new', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (13, N'Lệnh nào sau đây là sai?', N'int x;', N'cout << 120', N'cin >> y;', N'Không có lệnh sai', N'cout << 120', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (14, N'Tên biến nào dưới đây được viết đúng theo quy tắc đặt tên của ngôn ngữ lập trình C?', N'diem toan', N'3diemtoan', N'_diemtoan', N'-diemtoan', N'_diemtoan', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (15, N'Để chú thích trên 1 dòng lệnh trong chương trình C++, ta dùng cặp dấu nào?', N'\* và *\', N'<<', N'//', N'>>', N'//', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (16, N'Đâu là cú pháp đúng của câu lệnh if?', N'if expression', N'if {expression}', N'if (expression)', N'expression if', N'if (expression)', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (17, N'Vòng lặp do-while lặp ít nhất bao nhiêu lần?', N'0', N'1', N'Vô hạn', N'Tùy thuộc vào biến đếm', N'1', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (18, N'Cú pháp nào cho biết địa chỉ của biến được trỏ bởi con trỏ a?', N'a', N'&a', N'*a', N'address(a)', N'a', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (19, N'Cú pháp nào cho biết địa chỉ của phần tử đầu tiên trong mảng arr?', N'arr[0]', N'arr', N'&arr', N'arr[1]', N'arr', N'IT001')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (20, N'OOP là viết tắt của:', N'Object Oriented Programming', N'Open Object Programming', N'Object Open Programming', N'Object Oriented Proccessing', N'Object Oriented Programming', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (21, N'Các dạng kế thừa là:', N'Protected, Public', N'Private, Public, Protected', N'Private, Public', N'Private, Protected', N'Private, Public, Protected', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (22, N'Trong một lớp có thể có:', N'Một hàm dựng', N'Hai hàm dựng', N'Nhiều hàm dựng (tạo), các hàm dựng khác nhau về tham đối', N'Tất cả đều sai', N'Nhiều hàm dựng (tạo), các hàm dựng khác nhau về tham đối', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (23, N'Lớp đối tượng là:', N'Tập các phần tử cùng loại', N'Một thể hiện cụ thể cho các đối tượng', N'Tập các giá trị cùng loại', N'Một thiết kế hay mẫu cho các đối tượng cùng kiểu', N'Một thiết kế hay mẫu cho các đối tượng cùng kiểu', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (24, N'Sau khi khai báo và xây dựng thành công lớp đối tượng Sinh viên. Khi đó lớp đối tượng Sinh viên còn được gọi là:', N'Kiểu dữ liệu cơ bản', N'Kiểu dữ liệu trừu tượng', N'Lớp đối tượng cơ sở', N'Đối tượng', N'Kiểu dữ liệu trừu tượng', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (25, N'Khi khai báo và xây dựng thành công lớp đối tượng, để truycập vào thành phần của lớp ta phải:', N'Chỉ có thể truy cập thông qua tên đối tượng của lớp', N'Không thể truy cập được', N'Truy cập thông qua tên lớp hay tên đối tượng của lớp', N' Chỉ có thể truy cập thông qua tên lớp', N'Truy cập thông qua tên lớp hay tên đối tượng của lớp', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (26, N'Đối tượng là:', N'Một thực thể cụ thể trong thế giới thực', N'Một lớp vật chất trong thế giới thực', N'Một vật chất trong thế giới thực', N'Một mẫu hay một thiết kế cho mọi lớp đối tượng', N'Một thực thể cụ thể trong thế giới thực', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (27, N'Khi khai báo và xây dựng một lớp ta cần phải xác định rõ thành phần:', N'Dữ liệu và đối tượng của lớp', N'Vô số thành phần', N'Thuộc tính (dữ liệu) và phương thức (hành vi) của lớp', N'Khái niệm và đối tượng của lớp', N'Thuộc tính (dữ liệu) và phương thức (hành vi) của lớp', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (28, N'Cho lớp Điểm trong hệ tọa độ xOy. Các phương thức có thể có của lớp Điểm là:', N'Dịch chuyển, Thiết lập toạ độ', N'Tung độ, cao độ', N'Tung độ, hoành độ', N' Tung độ, hoành độ, cao độ', N'Dịch chuyển, Thiết lập toạ độ', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (29, N'Khi khai báo thành phần thuộc tính và phương thức của lớp, nếu không khai báo từ khóa private, public hay protected thì mặc định sẽ là:', N'public', N'private', N'protected', N' Chương trình báo lỗi', N'private', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (30, N'Cú pháp Hàm huỷ (Destructor) trong ngôn ngữ C++ là:', N'~Tên_lớp{nội dung}', N'Done {nội dung}', N'Destructor Tên_hàm {nội dung}', N' Tên_lớp{nội dung}', N'~Tên_lớp{nội dung}', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (31, N'Phương pháp nào sau đây chính là phương pháp sắp xếp nhanh (Quick sort)?', N'Phương pháp trộn', N'Phương pháp vun đống', N'Phương pháp chèn', N'Phương pháp phân đoạn', N'Phương pháp phân đoạn', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (32, N'Thuật toán sắp xếp trộn (Merge Sort) là điển hình cho thuật toán nào dưới đây?', N'Tham lam', N'Chia để trị', N'Vét cạn', N'Quay lui', N'Chia để trị', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (33, N'Độ phức tạp trung bình của thuật toán sắp xếp Quick Sort là:', N'O(nlogn)', N'O(n)', N'O(logn)', N'O(n^2)', N'O(nlogn)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (34, N'Trong kiểu dữ liệu cây (Tree), nút lá (leaf node) là nút:', N'Có bậc bằng 0', N'Không có nút cha', N'Có 1 nút con', N'Có 2 nút con', N'Có bậc bằng 0', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (35, N'Tính chất nào sau đây là của cây nhị phân tìm kiếm?', N'Giá trị của nút cha lớn hơn giá trị của hai nút con', N'Là cây nhị phân đầy đủ', N'Cây nhị phân thoả tính chất heap', N' giá trị của nút cha nhỏ hơn mọi nút trên cây con trái và lớn hơn mọi nút trên cây con phải của nó', N' giá trị của nút cha nhỏ hơn mọi nút trên cây con trái và lớn hơn mọi nút trên cây con phải của nó', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (36, N'Cho cây nhị phân: A B C D E F. Cho biết thứ tự các phần tử được duyệt nào sau đây là đúng khi sử dụng phép duyệt cây theo thứ tự trước?', N'A,B,D,C,F,E', N'A,B,C,D,E,F', N'A,B,D,E,C,F', N'D,B,A,C,E,F', N'A,B,D,E,C,F', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (37, N'Khi lưu trữ cây nhị phân dưới dạng mảng, nếu vị trí của nút cha trong mảng là i thì vị trí của nút con PHẢI là:', N'2*i + 1', N'i + 1', N'i - 1', N'2*i', N'2*i + 1', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (38, N'Trong biểu diễn dữ liệu dưới dạng cây, khái niệm nào sau đây là cấp của cây?', N'Là tổng số nút trên cây', N'Là cấp cao nhất của nút gốc', N'Là cấp cao nhất của một nút trên cây', N'Là cấp cao nhất của nút lá', N'Là cấp cao nhất của một nút trên cây', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (39, N'Đồ thị vô hướng G có chu trình Euler khi và chỉ khi:', N'G liên thông và mọi đỉnh G có bậc chẵn', N'Mọi đỉnh G có bậc chẵn', N'G có chu trình Hamilton', N'G có đường đi Euler', N'G có chu trình Hamilton', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (40, N'Nhân tố chính ảnh hưởng đến thời gian tính của một giải thuật là:', N'Máy tính', N'Thuật toán được sử dụng', N'Chương trình dịch', N'Kích thước của dữ liệu đầu vào của thuật toán', N'Kích thước của dữ liệu đầu vào của thuật toán', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (41, N'Câu lệnh SQL nào được dùng để trích xuất dữ liệu từ database:', N'Get', N'Open', N'Extract', N'Select', N'Select', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (42, N'Câu lệnh SQL nào được dùng để cập nhật dữ liệu từ database', N'Update', N'Save as', N'Modify', N'Save', N'Update', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (43, N'Trong SQL, làm thế nào để chọn tất cả các cột dữ liệu trong bảng Persons?', N'Select [all] FROM Persons', N'Select All Persons', N'Select *.Persons', N'Select * FROM Persons', N'Select * FROM Persons', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (44, N'Từ khóa SQL nào được sử dụng để sắp xếp danh sách kết quả:', N'SORT BY', N'ORDER', N'ORDER BY', N'SORT', N'ORDER BY', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (45, N'Câu lệnh SQL nào sau đây được dùng để xóa các dòng dữ liệu khỏi bảng?', N'DROP', N'REMOVE ROW', N'DELETE', N'DELETE ROW', N'DELETE', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (46, N'Hàm nào dưới đây là hàm tập hợp trong SQL?', N'AVG', N'LEN', N'JOIN', N'LEFT', N'AVG', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (47, N'LIKE được sử dụng cùng với lệnh nào?', N'Mệnh đề WHERE', N'Mệnh đề GROUP BY', N'Mệnh đề JOIN', N'Mệnh đề ORDER BY', N'Mệnh đề WHERE', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (48, N'Cú pháp SQL nào được dùng để trả về những giá trị khác nhau:', N'SELECT UNIQUE', N'SELECT INDENTITY', N'SELECT DIFFERNT', N'SELECT DISTINCT', N'SELECT DISTINCT', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (49, N'Trong SQL, làm thế nào để xóa bản ghi Peter trong cột FirstName của bảng Persons:', N'DELETE FROM Persons WHERE FirstName = ‘Peter’', N'DELETE ROW FirstName= ‘Peter’ FROM Persons', N'DELETE FirstName= ‘Peter’ FROM Persons', N'DELETE FirstName= Peter FROM Persons', N'DELETE FROM Persons WHERE FirstName = ‘Peter’', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (50, N'Hàm ABS trong SQL được sử dụng để làm gì?', N'Trả về giá trị tuyệt đối của biểu thức số', N'Trả về giá trị tối thiểu của biểu thức số', N'Trả về giá trị tối đa của một biểu thức số', N'Trả về giá trị trung bình của một biểu thức số', N'Trả về giá trị tuyệt đối của biểu thức số', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (51, N'Câu lệnh nào dùng để tạo một bảng mới trong SQL?', N'CREATE TABLE', N'INSERT INTO', N'UPDATE TABLE', N'DELETE TABLE', N'CREATE TABLE', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (52, N'Chỉ mục (Index) trong cơ sở dữ liệu có chức năng gì?', N'Tăng tốc độ truy vấn', N'Tạo ra bản sao của dữ liệu', N'Bảo mật dữ liệu', N'Kiểm tra dữ liệu trùng', N'Tăng tốc độ truy vấn', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (53, N'Câu lệnh nào dùng để thêm một hàng dữ liệu mới vào bảng?', N'ADD ROW', N'INSERT INTO', N'UPDATE', N'ALTER', N'INSERT INTO', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (54, N'Câu lệnh SQL nào dùng để thay đổi dữ liệu trong một bảng?', N'INSERT INTO', N'UPDATE', N'ALTER', N'MODIFY', N'UPDATE', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (55, N'Primary key là gì?', N'Một cột hoặc nhóm cột định danh duy nhất cho mỗi hàng trong bảng', N'Một cột chứa giá trị tự động tăng', N'Một cột chứa dữ liệu trùng lặp', N'Một cột chứa giá trị null', N'Một cột hoặc nhóm cột định danh duy nhất cho mỗi hàng trong bảng', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (56, N'Khóa ngoại (foreign key) có chức năng gì?', N'Tạo liên kết giữa các bảng', N'Tạo chỉ mục cho bảng', N'Xác định khóa chính', N'Chứa dữ liệu trùng', N'Tạo liên kết giữa các bảng', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (57, N'Câu lệnh SQL nào dùng để xóa một bảng?', N'DROP TABLE', N'DELETE TABLE', N'ERASE TABLE', N'CLEAR TABLE', N'DROP TABLE', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (58, N'Biểu đồ E-R là gì?', N'Một mô hình biểu diễn mối quan hệ giữa các thực thể trong cơ sở dữ liệu', N'Một công cụ tạo truy vấn', N'Một loại bảng cơ sở dữ liệu', N'Một ngôn ngữ truy vấn', N'Một mô hình biểu diễn mối quan hệ giữa các thực thể trong cơ sở dữ liệu', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (59, N'Normalization trong cơ sở dữ liệu là gì?', N'Một quá trình tổ chức dữ liệu để giảm sự trùng lặp và tăng tính toàn vẹn', N'Một loại chỉ mục', N'Một kiểu dữ liệu', N'Một loại khóa', N'Một quá trình tổ chức dữ liệu để giảm sự trùng lặp và tăng tính toàn vẹn', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (60, N'Câu lệnh SQL nào dùng để thay đổi cấu trúc của bảng?', N'UPDATE TABLE', N'ALTER TABLE', N'MODIFY TABLE', N'CHANGE TABLE', N'ALTER TABLE', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (61, N'Trigger trong SQL là gì?', N'Một loại khóa', N'Một chỉ mục', N'Một thủ tục tự động thực thi khi có sự kiện xảy ra', N'Một hàm', N'Một thủ tục tự động thực thi khi có sự kiện xảy ra', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (62, N'Khóa chính (primary key) có thể chứa giá trị null không?', N'Có', N'Không', N'Chỉ trong một số trường hợp', N'Tùy thuộc vào thiết kế cơ sở dữ liệu', N'Không', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (63, N'View trong SQL là gì?', N'Một bản sao của bảng', N'Một truy vấn lưu trữ như một bảng', N'Một bảng tạm thời', N'Một khóa chính', N'Một truy vấn lưu trữ như một bảng', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (64, N'ACID trong cơ sở dữ liệu viết tắt cho những đặc tính nào?', N'Atomicity, Consistency, Isolation, Durability', N'Atomicity, Consistency, Isolation, Database', N'Atomicity, Consistency, Integration, Durability', N'Atomicity, Consistency, Isolation, Dependency', N'Atomicity, Consistency, Isolation, Durability', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (65, N'JOIN trong SQL có tác dụng gì?', N'Liên kết các bảng với nhau', N'Tạo chỉ mục cho bảng', N'Xác định khóa chính', N'Chứa dữ liệu trùng', N'Liên kết các bảng với nhau', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (66, N'UNION trong SQL có tác dụng gì?', N'Trả về tất cả các hàng từ các truy vấn khác nhau mà không có hàng trùng lặp', N'Trả về các hàng duy nhất từ một bảng', N'Xóa các hàng trùng lặp trong bảng', N'Tạo ra bản sao của bảng', N'Trả về tất cả các hàng từ các truy vấn khác nhau mà không có hàng trùng lặp', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (67, N'Trường nào của bảng thường được chọn làm khóa chính?', N'Một trường có giá trị duy nhất', N'Một trường có thể chứa giá trị null', N'Một trường có giá trị trùng lặp', N'Một trường không cần thiết', N'Một trường có giá trị duy nhất', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (68, N'Khóa ngoại có thể liên kết với khóa chính của bảng khác không?', N'Có', N'Không', N'Tùy vào loại cơ sở dữ liệu', N'Tùy vào thiết kế của bảng', N'Có', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (69, N'FROM trong SQL có tác dụng gì?', N'Chỉ định bảng mà dữ liệu sẽ được truy vấn', N'Chỉ định cột mà dữ liệu sẽ được truy vấn', N'Tạo ra một bảng mới', N'Xóa một bảng', N'Chỉ định bảng mà dữ liệu sẽ được truy vấn', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (70, N'Trường nào trong bảng thường được đánh chỉ mục?', N'Trường có nhiều giá trị duy nhất', N'Trường có nhiều giá trị trùng lặp', N'Trường có giá trị null', N'Trường không cần thiết', N'Trường có nhiều giá trị duy nhất', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (71, N'WHERE trong SQL có tác dụng gì?', N'Chỉ định điều kiện để lọc dữ liệu', N'Chỉ định bảng mà dữ liệu sẽ được truy vấn', N'Tạo ra một bảng mới', N'Xóa một bảng', N'Chỉ định điều kiện để lọc dữ liệu', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (72, N'GROUP BY trong SQL có tác dụng gì?', N'Nhóm các hàng có cùng giá trị trong cột chỉ định lại với nhau', N'Chỉ định điều kiện để lọc dữ liệu', N'Tạo ra một bảng mới', N'Xóa một bảng', N'Nhóm các hàng có cùng giá trị trong cột chỉ định lại với nhau', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (73, N'Hàm COUNT() trong SQL có tác dụng gì?', N'Đếm số lượng hàng trong bảng', N'Tính tổng giá trị của cột', N'Tính giá trị trung bình của cột', N'Tìm giá trị lớn nhất của cột', N'Đếm số lượng hàng trong bảng', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (74, N'Hàm AVG() trong SQL có tác dụng gì?', N'Tính giá trị trung bình của cột', N'Tính tổng giá trị của cột', N'Đếm số lượng hàng trong bảng', N'Tìm giá trị lớn nhất của cột', N'Tính giá trị trung bình của cột', N'IT004')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (75, N'Mô hình OSI có bao nhiêu lớp?', N'5 lớp', N'6 lớp', N'7 lớp', N'8 lớp', N'7 lớp', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (76, N'Lớp nào trong mô hình OSI chịu trách nhiệm định tuyến dữ liệu?', N'Lớp mạng', N'Lớp vận chuyển', N'Lớp liên kết dữ liệu', N'Lớp ứng dụng', N'Lớp mạng', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (77, N'Dịch vụ nào dưới đây là của lớp ứng dụng trong mô hình OSI?', N'Telnet', N'IP', N'TCP', N'UDP', N'Telnet', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (78, N'IP là viết tắt của từ gì?', N'Internet Protocol', N'Internal Protocol', N'Interconnected Protocol', N'Interface Protocol', N'Internet Protocol', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (79, N'Giao thức nào dưới đây là giao thức không kết nối?', N'TCP', N'UDP', N'HTTP', N'FTP', N'UDP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (80, N'Một địa chỉ IP phiên bản 4 (IPv4) có bao nhiêu bit?', N'32 bit', N'64 bit', N'128 bit', N'256 bit', N'32 bit', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (81, N'Tầng nào trong mô hình OSI chịu trách nhiệm phát hiện và sửa lỗi?', N'Tầng ứng dụng', N'Tầng mạng', N'Tầng vận chuyển', N'Tầng liên kết dữ liệu', N'Tầng liên kết dữ liệu', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (82, N'Giao thức nào được sử dụng để truyền tải email?', N'HTTP', N'FTP', N'SMTP', N'SNMP', N'SMTP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (83, N'Giao thức nào sử dụng cổng 80?', N'FTP', N'HTTPS', N'Telnet', N'HTTP', N'HTTP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (84, N'Phương thức nào được sử dụng để truyền file trên internet?', N'FTP', N'HTTP', N'SMTP', N'SNMP', N'FTP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (85, N'Giao thức nào đảm bảo tính toàn vẹn của dữ liệu?', N'TCP', N'UDP', N'IP', N'ICMP', N'TCP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (86, N'Tầng nào trong mô hình OSI tương ứng với tầng Network của mô hình TCP/IP?', N'Tầng liên kết dữ liệu', N'Tầng mạng', N'Tầng vận chuyển', N'Tầng ứng dụng', N'Tầng mạng', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (87, N'Giao thức nào dưới đây là giao thức kết nối?', N'HTTP', N'TCP', N'UDP', N'FTP', N'TCP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (88, N'Một địa chỉ IPv6 có bao nhiêu bit?', N'32 bit', N'64 bit', N'128 bit', N'256 bit', N'128 bit', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (89, N'Giao thức nào dưới đây dùng để quản lý mạng?', N'SMTP', N'HTTP', N'SNMP', N'FTP', N'SNMP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (90, N'Mạng LAN là gì?', N'Local Area Network', N'Large Area Network', N'Local Access Network', N'Large Access Network', N'Local Area Network', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (91, N'Giao thức nào được sử dụng để phân giải tên miền thành địa chỉ IP?', N'HTTP', N'FTP', N'SMTP', N'DNS', N'DNS', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (92, N'Tầng nào trong mô hình OSI chịu trách nhiệm mã hóa dữ liệu?', N'Tầng trình bày', N'Tầng vận chuyển', N'Tầng liên kết dữ liệu', N'Tầng mạng', N'Tầng trình bày', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (93, N'Giao thức nào dùng để truyền tải dữ liệu một cách không đồng bộ?', N'TCP', N'UDP', N'FTP', N'SMTP', N'UDP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (94, N'Giao thức DHCP có tác dụng gì?', N'Phân giải tên miền', N'Cấp phát địa chỉ IP động', N'Truyền tải dữ liệu', N'Bảo mật mạng', N'Cấp phát địa chỉ IP động', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (95, N'Mô hình mạng nào dưới đây sử dụng đường truyền vật lý để kết nối các thiết bị?', N'Mạng không dây', N'Mạng có dây', N'Mạng diện rộng', N'Mạng cục bộ', N'Mạng có dây', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (96, N'Giao thức nào dưới đây không thuộc tầng ứng dụng?', N'HTTP', N'FTP', N'SMTP', N'TCP', N'TCP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (97, N'Giao thức nào dưới đây là giao thức kết nối an toàn?', N'HTTP', N'HTTPS', N'FTP', N'TCP', N'HTTPS', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (98, N'Giao thức nào sử dụng cổng 21?', N'FTP', N'HTTP', N'SMTP', N'DNS', N'FTP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (99, N'Giao thức nào được sử dụng để truyền video trực tuyến?', N'RTP', N'SMTP', N'FTP', N'HTTP', N'RTP', N'IT005')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (100, N'Từ khóa nào được sử dụng để tạo ra một lớp trong Java?', N'class', N'new', N'public', N'package', N'class', N'IT002')
GO
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (101, N'Phương thức nào dưới đây là phương thức khởi tạo của một lớp?', N'Constructor', N'Destructor', N'Method', N'Field', N'Constructor', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (102, N'Tính năng nào của lập trình hướng đối tượng cho phép một lớp con sử dụng lại các thuộc tính và phương thức của lớp cha?', N'Kế thừa', N'Đa hình', N'Đóng gói', N'Trừu tượng hóa', N'Kế thừa', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (103, N'Phương thức nào trong C++ được gọi khi một đối tượng bị phá hủy?', N'Constructor', N'Destructor', N'Delete', N'Free', N'Destructor', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (104, N'Khái niệm nào trong lập trình hướng đối tượng dùng để che giấu thông tin chi tiết của một đối tượng?', N'Kế thừa', N'Đa hình', N'Đóng gói', N'Trừu tượng hóa', N'Đóng gói', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (105, N'Trừu tượng hóa là gì trong lập trình hướng đối tượng?', N'Là khái niệm che giấu các chi tiết bên trong và chỉ hiển thị những gì cần thiết', N'Là khái niệm tạo ra các lớp con từ lớp cha', N'Là khái niệm đa hình cho phép các phương thức cùng tên có thể thực thi các chức năng khác nhau', N'Là khái niệm tạo ra các đối tượng từ lớp', N'Là khái niệm che giấu các chi tiết bên trong và chỉ hiển thị những gì cần thiết', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (106, N'Phương thức nào dưới đây trong Java là phương thức ảo (virtual method)?', N'Main method', N'Static method', N'Abstract method', N'Final method', N'Abstract method', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (107, N'Tính năng nào của lập trình hướng đối tượng cho phép các đối tượng khác nhau có thể phản hồi lại cùng một thông điệp theo các cách khác nhau?', N'Kế thừa', N'Đa hình', N'Đóng gói', N'Trừu tượng hóa', N'Đa hình', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (108, N'Trong C++, từ khóa nào được sử dụng để kế thừa một lớp?', N'extend', N'inherit', N'public', N'private', N'public', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (109, N'Phương thức nào dưới đây được sử dụng để tạo một đối tượng mới trong Java?', N'class', N'new', N'public', N'instance', N'new', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (110, N'Từ khóa nào trong Java được sử dụng để ngăn cấm kế thừa một lớp?', N'super', N'extends', N'final', N'abstract', N'final', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (111, N'Trừu tượng hóa dữ liệu trong lập trình hướng đối tượng nhằm mục đích gì?', N'Tăng tính bảo mật và giảm thiểu sự phụ thuộc lẫn nhau giữa các thành phần', N'Tạo ra các lớp con từ lớp cha', N'Tạo ra các đối tượng từ lớp', N'Đảm bảo tính kế thừa', N'Tăng tính bảo mật và giảm thiểu sự phụ thuộc lẫn nhau giữa các thành phần', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (112, N'Phương thức nào được gọi khi một đối tượng được tạo ra trong C++?', N'Constructor', N'Destructor', N'Create', N'Init', N'Constructor', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (113, N'Từ khóa nào trong C++ được sử dụng để ngăn cấm việc ghi đè phương thức?', N'final', N'static', N'virtual', N'const', N'final', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (114, N'Phương thức nào dưới đây không thể bị ghi đè trong Java?', N'Private method', N'Abstract method', N'Protected method', N'Static method', N'Private method', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (115, N'Biến nào trong Java có thể được chia sẻ giữa tất cả các đối tượng của lớp?', N'Instance variable', N'Local variable', N'Static variable', N'Private variable', N'Static variable', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (116, N'Từ khóa nào trong C++ được sử dụng để khai báo một phương thức trừu tượng?', N'virtual', N'abstract', N'final', N'pure', N'pure', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (117, N'Phương thức nào dưới đây trong C++ được sử dụng để cấp phát bộ nhớ động cho một đối tượng?', N'new', N'malloc', N'calloc', N'alloc', N'new', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (118, N'Khái niệm nào sau đây cho phép một lớp có nhiều phiên bản của cùng một phương thức nhưng với các tham số khác nhau?', N'Đa hình', N'Đóng gói', N'Trừu tượng hóa', N'Kế thừa', N'Đa hình', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (119, N'Trong C++, tính đa hình được thực hiện bằng cách nào?', N'Overloading', N'Overriding', N'Casting', N'Template', N'Overriding', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (120, N'Trong Java, sự khác biệt chính giữa một interface và một abstract class là gì?', N'Một abstract class có thể chứa các phương thức có thân (body), trong khi interface thì không.', N'Một interface có thể có các biến instance, trong khi một abstract class thì không.', N'Cả interface và abstract class đều không thể được khởi tạo.', N'Một abstract class có thể kế thừa từ một lớp khác, trong khi interface thì không.', N'Một abstract class có thể chứa các phương thức có thân (body), trong khi interface thì không.', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (121, N'Trong C++, từ khóa nào được sử dụng để gọi rõ ràng một phương thức của lớp cha trong lớp con?', N'super', N'base', N'parent', N'scope', N'base', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (122, N'Trong lập trình hướng đối tượng, từ khóa nào trong C++ được dùng để truy cập các thành phần lớp cha bị ghi đè (overridden)?', N'parent', N'super', N'base', N'root', N'base', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (123, N'Trong Java, từ khóa "super" được sử dụng để làm gì?', N'Truy cập các biến instance của lớp con', N'Truy cập các biến instance của lớp cha', N'Truy cập các phương thức private của lớp cha', N'Truy cập các phương thức static của lớp cha', N'Truy cập các biến instance của lớp cha', N'IT002')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (124, N'Cấu trúc dữ liệu nào được sử dụng để thực hiện một hàng đợi?', N'Array', N'Linked List', N'Stack', N'Tree', N'Linked List', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (125, N'Thời gian truy cập trung bình cho một phần tử trong một mảng là bao nhiêu?', N'O(1)', N'O(n)', N'O(logn)', N'O(nlogn)', N'O(1)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (126, N'Phương pháp tìm kiếm nào có hiệu suất tốt nhất trong trường hợp dữ liệu đã được sắp xếp?', N'Tìm kiếm tuần tự', N'Tìm kiếm nhị phân', N'Tìm kiếm nội suy', N'Tìm kiếm nhị phân cải tiến', N'Tìm kiếm nhị phân', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (127, N'Thời gian thực hiện tốt nhất của thuật toán Bubble Sort là bao nhiêu?', N'O(n)', N'O(n^2)', N'O(nlogn)', N'O(logn)', N'O(n)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (128, N'Cấu trúc dữ liệu nào dưới đây là một cấu trúc dữ liệu tuyến tính?', N'Tree', N'Graph', N'Queue', N'Hash Table', N'Queue', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (129, N'Thời gian thực hiện của việc chèn một phần tử vào đầu danh sách liên kết đơn là bao nhiêu?', N'O(1)', N'O(n)', N'O(log n)', N'O(n log n)', N'O(1)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (130, N'Phương pháp sắp xếp nào sử dụng kỹ thuật phân chia để trị (divide and conquer)?', N'Selection Sort', N'Insertion Sort', N'Merge Sort', N'Bubble Sort', N'Merge Sort', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (131, N'Thời gian truy cập trung bình cho một phần tử trong danh sách liên kết đơn là bao nhiêu?', N'O(1)', N'O(n)', N'O(logn)', N'O(nlogn)', N'O(n)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (132, N'Thời gian thực hiện của thuật toán tìm kiếm nhị phân là bao nhiêu?', N'O(1)', N'O(n)', N'O(logn)', N'O(nlogn)', N'O(logn)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (133, N'Đỉnh của ngăn xếp (stack) được truy cập thông qua phương thức nào?', N'push', N'pop', N'top', N'peek', N'top', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (134, N'Cấu trúc dữ liệu nào sử dụng nguyên tắc "Last In, First Out" (LIFO)?', N'Queue', N'Stack', N'Tree', N'Graph', N'Stack', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (135, N'Thời gian thực hiện của việc thêm một phần tử vào cuối danh sách liên kết đơn là bao nhiêu?', N'O(1)', N'O(n)', N'O(logn)', N'O(nlogn)', N'O(n)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (136, N'Phương pháp duyệt cây nào đi qua nút gốc (root) trước tiên?', N'In-order traversal', N'Pre-order traversal', N'Post-order traversal', N'Level-order traversal', N'Pre-order traversal', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (137, N'Phương pháp duyệt cây nào đi qua nút gốc (root) cuối cùng?', N'In-order traversal', N'Pre-order traversal', N'Post-order traversal', N'Level-order traversal', N'Post-order traversal', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (138, N'Cấu trúc dữ liệu nào dưới đây có thể được sử dụng để biểu diễn một biểu thức số học?', N'Queue', N'Stack', N'Tree', N'Hash Table', N'Tree', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (139, N'Phương pháp tìm kiếm nào đảm bảo sẽ tìm thấy phần tử nếu nó tồn tại trong danh sách?', N'Tìm kiếm tuần tự', N'Tìm kiếm nhị phân', N'Tìm kiếm nội suy', N'Tìm kiếm nhị phân cải tiến', N'Tìm kiếm tuần tự', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (140, N'Cấu trúc dữ liệu nào được sử dụng để thực hiện một ngăn xếp (stack)?', N'Array', N'Linked List', N'Cả Array và Linked List', N'Không đáp án nào đúng', N'Cả Array và Linked List', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (141, N'Thời gian thực hiện của thuật toán tìm kiếm tuần tự là bao nhiêu?', N'O(1)', N'O(n)', N'O(logn)', N'O(nlogn)', N'O(n)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (142, N'Để biểu diễn một đồ thị, chúng ta có thể sử dụng cấu trúc dữ liệu nào?', N'Adjacency Matrix', N'Adjacency List', N'Cả hai đáp án trên', N'Không đáp án nào đúng', N'Cả hai đáp án trên', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (143, N'Phương pháp sắp xếp nào có hiệu suất tốt nhất trên một danh sách đã được sắp xếp một phần?', N'Selection Sort', N'Insertion Sort', N'Merge Sort', N'Bubble Sort', N'Insertion Sort', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (144, N'Thời gian thực hiện của việc thêm một phần tử vào ngăn xếp (stack) là bao nhiêu?', N'O(1)', N'O(n)', N'O(logn)', N'O(nlogn)', N'O(1)', N'IT003')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (162, N'mot', N'1', N'3', N'2', N'4', N'1', N'IT006')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (163, N'hai', N'2', N'3', N'22', N'4', N'2', N'IT006')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (164, N'ba', N'2', N'3', N'2', N'4', N'2', N'IT006')
INSERT [dbo].[TB_CAUHOI] ([iID], [sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) VALUES (165, N'demo cau hoi', N'dap an a', N'dap an b', N'dap an c', N'dap an a d', N'dap an a', N'IT005')
SET IDENTITY_INSERT [dbo].[TB_CAUHOI] OFF
GO
SET IDENTITY_INSERT [dbo].[TB_KETQUA] ON 

INSERT [dbo].[TB_KETQUA] ([iMAKETQUA], [sMS], [sHOTENKQ], [sTENMON], [iSOCAUDUNG], [iDIEM], [tNGAYTHI]) VALUES (1, N'195050539', N'nnnnnn', N'Nhập môn lập trình', 1, 1, CAST(N'2024-12-07T00:00:00.000' AS DateTime))
INSERT [dbo].[TB_KETQUA] ([iMAKETQUA], [sMS], [sHOTENKQ], [sTENMON], [iSOCAUDUNG], [iDIEM], [tNGAYTHI]) VALUES (2, N'195050539', N'nnnnnn', N'Lập trình hướng đối tượng', 1, 1, CAST(N'2024-07-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TB_KETQUA] ([iMAKETQUA], [sMS], [sHOTENKQ], [sTENMON], [iSOCAUDUNG], [iDIEM], [tNGAYTHI]) VALUES (3, N'195050539', N'nnnnnn', N'Nhập môn mạng máy tính', 5, 5, CAST(N'2024-07-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TB_KETQUA] ([iMAKETQUA], [sMS], [sHOTENKQ], [sTENMON], [iSOCAUDUNG], [iDIEM], [tNGAYTHI]) VALUES (4, N'185050555', N'Nguyen Van A', N'Nhập môn lập trình', 0, 0, CAST(N'2024-07-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TB_KETQUA] ([iMAKETQUA], [sMS], [sHOTENKQ], [sTENMON], [iSOCAUDUNG], [iDIEM], [tNGAYTHI]) VALUES (5, N'185050555', N'Nguyen Van A', N'Cơ sở dữ liệu', 0, 0, CAST(N'2024-07-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TB_KETQUA] ([iMAKETQUA], [sMS], [sHOTENKQ], [sTENMON], [iSOCAUDUNG], [iDIEM], [tNGAYTHI]) VALUES (6, N'185050555', N'Nguyen Van AA', N'Nhập môn mạng máy tính', 0, 0, CAST(N'2024-07-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TB_KETQUA] ([iMAKETQUA], [sMS], [sHOTENKQ], [sTENMON], [iSOCAUDUNG], [iDIEM], [tNGAYTHI]) VALUES (9, N'185050555', N'Nguyen Van AA', N'Cấu trúc dữ liệu và giải thuật', 1, 1, CAST(N'2024-07-15T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TB_KETQUA] OFF
GO
INSERT [dbo].[TB_MONTHI] ([sMAMON], [sTENMON]) VALUES (N'IT001', N'Nhập môn lập trình')
INSERT [dbo].[TB_MONTHI] ([sMAMON], [sTENMON]) VALUES (N'IT002', N'Lập trình hướng đối tượng')
INSERT [dbo].[TB_MONTHI] ([sMAMON], [sTENMON]) VALUES (N'IT003', N'Cấu trúc dữ liệu và giải thuật')
INSERT [dbo].[TB_MONTHI] ([sMAMON], [sTENMON]) VALUES (N'IT004', N'Cơ sở dữ liệu')
INSERT [dbo].[TB_MONTHI] ([sMAMON], [sTENMON]) VALUES (N'IT005', N'Nhập môn mạng máy tính')
INSERT [dbo].[TB_MONTHI] ([sMAMON], [sTENMON]) VALUES (N'IT006', N'Tin học nâng cao')
GO
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'185050555', N'Nguyen Van AA', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'luckydayne131@gmail.com', N'sinhvien1', N'$2a$11$SImsrWUsSyhmiV2XqbtRxesObyl7KAYWHHgkNaHXxCpjwIwqiuSEi')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'195050539', N'nnnnnn', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'dothanhnhan20k@gmail.com', N'nnnnnnnn8', N'$2a$11$52RRt0kwt/DZ03UMTI7kh.b3QhLA6JU14tmKi0Yw5QzGzBoMoxdTG')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'2020839', N'Nguyen han', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'phamdoan9696@gmail.com', N'sinhvien2', N'$2a$11$J2AwtHdZ1pdrAIspsCDMPuosejqsDZvpJqJ1YjrJNR2q4.fKPZLQm')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'20521011', N'Trần Thị Bình', CAST(N'2002-02-25T00:00:00.000' AS DateTime), N'a25bc@gmail.com', N'10A1002', N'$2a$10$KgohAiWKGf1EjDfkYOZG9OlXKrBULglG.AAIwKMn295AWrSw3jBaK')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'20521114', N'Nguyễn Văn An', CAST(N'2002-01-11T00:00:00.000' AS DateTime), N'a30bc@gmail.com', N'10A1001', N'$2a$10$pE9pORdH/BroEjfiHPsV4Otgu7XNxqkSn8QP23WfLx.as4mn/qaN.')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'21521001', N'Phan Thắng', CAST(N'2003-03-14T00:00:00.000' AS DateTime), N'a4bc@gmail.com', N'11A1101', N'$2a$10$9Z1rqv7dHjSvpZl.ADELBOkHnYYFD50RhekerDMTW54VlIeMRqRb.')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'21521041', N'Tạ Bích Hằng ', CAST(N'2003-04-24T00:00:00.000' AS DateTime), N'a3bc@gmail.com', N'11A1102', N'$2a$10$SXTnaJCSitcpAtdxsJqt1.3am24j0aZgOxzvC9nmcu4bT22NV4SYy')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'22521054', N'Cao Trọng Tú', CAST(N'2004-08-29T00:00:00.000' AS DateTime), N'ab2c@gmail.com', N'12A1202', N'$2a$10$3wuOI0puf6D8G8VrPZKzZuJMhPuJsXKrjkFsK04UXCMDq.OyiW5IS')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'22521074', N'Hoàng Anh Dũng', CAST(N'2004-11-20T00:00:00.000' AS DateTime), N'ab3c@gmail.com', N'12A1201', N'$2a$10$IoIkWPMW.Ao/.PmioMZEU.HBnE7KBVMwdhu3XyVUSyEhCzmShKF1i')
INSERT [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS]) VALUES (N'23521224', N'Đỗ Mai Linh', CAST(N'2005-09-26T00:00:00.000' AS DateTime), N'abc2@gmail.com', N'13A1204', N'$2a$10$WdUd4hhA3U2zujXWI8HP5uaoBAELg1XPiVi5dkbKWxZixRJOdwxEi')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [sUSERNAME_unique]    Script Date: 15-07-2024 9:51:43 PM ******/
ALTER TABLE [dbo].[TB_USER] ADD  CONSTRAINT [sUSERNAME_unique] UNIQUE NONCLUSTERED 
(
	[sUSERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_CAUHOI]  WITH CHECK ADD FOREIGN KEY([sMAMON])
REFERENCES [dbo].[TB_MONTHI] ([sMAMON])
GO
ALTER TABLE [dbo].[TB_KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_sMSKQ] FOREIGN KEY([sMS])
REFERENCES [dbo].[TB_USER] ([sMS])
GO
ALTER TABLE [dbo].[TB_KETQUA] CHECK CONSTRAINT [FK_sMSKQ]
GO
/****** Object:  StoredProcedure [dbo].[spADMIN_UPDATEPASSWORD]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Thủ tục cập nhật mật khẩu admin
CREATE PROCEDURE [dbo].[spADMIN_UPDATEPASSWORD]
    @sMATKHAU varchar(64)
AS
BEGIN
    UPDATE TB_ADMIN
    SET sMATKHAU = @sMATKHAU
    WHERE sTAIKHOAN = 'admin';
END;
GO
/****** Object:  StoredProcedure [dbo].[spCAUHOI_GET]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Thủ tục lưu trữ cho TB_CAUHOI
CREATE PROCEDURE [dbo].[spCAUHOI_GET]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM TB_CAUHOI;
END;
GO
/****** Object:  StoredProcedure [dbo].[spCAUHOI_INSERT]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCAUHOI_INSERT]
    @iID int OUTPUT,
    @sNOIDUNG nvarchar(300),
    @sA nvarchar(100),
    @sB nvarchar(100),
    @sC nvarchar(100),
    @sD nvarchar(100),
    @sDAPAN nvarchar(100),
    @sMAMON nvarchar(20)
AS
BEGIN
    INSERT INTO [dbo].[TB_CAUHOI] ([sNOIDUNG], [sA], [sB], [sC], [sD], [sDAPAN], [sMAMON]) 
    VALUES (@sNOIDUNG, @sA, @sB, @sC, @sD, @sDAPAN, @sMAMON);
    SET @iID = @@IDENTITY;
END;
GO
/****** Object:  StoredProcedure [dbo].[spCAUHOI_UPDATE]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCAUHOI_UPDATE]
    @iID int,
    @sNOIDUNG nvarchar(300),
    @sA nvarchar(100),
    @sB nvarchar(100),
    @sC nvarchar(100),
    @sD nvarchar(100),
    @sDAPAN nvarchar(100),
    @sMAMON nvarchar(20)
AS
BEGIN
    UPDATE [dbo].[TB_CAUHOI]
    SET sNOIDUNG = @sNOIDUNG,
        sA = @sA,
        sB = @sB,
        sC = @sC,
        sD = @sD,
        sDAPAN = @sDAPAN,
        sMAMON = @sMAMON
    WHERE iID = @iID;
END;
GO
/****** Object:  StoredProcedure [dbo].[spKETQUA_GET]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Thủ tục lưu trữ cho TB_KETQUA
CREATE PROCEDURE [dbo].[spKETQUA_GET]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM TB_KETQUA;
END;
GO
/****** Object:  StoredProcedure [dbo].[spKETQUA_INSERT]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spKETQUA_INSERT]
    @iMAKETQUA int OUTPUT,
    @sMS nvarchar(30),
    @sHOTENKQ nvarchar(50),
    @sTENMON nvarchar(50),
    @iSOCAUDUNG int,
    @iDIEM int,
    @tNGAYTHI datetime
AS
BEGIN
    INSERT INTO [dbo].[TB_KETQUA] ([sMS], [sHOTENKQ], [sTENMON], [iSOCAUDUNG], [iDIEM], [tNGAYTHI]) 
    VALUES (@sMS, @sHOTENKQ, @sTENMON, @iSOCAUDUNG, @iDIEM, @tNGAYTHI);
    SET @iMAKETQUA = @@IDENTITY;
END;
GO
/****** Object:  StoredProcedure [dbo].[spUSER_GET]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Thủ tục lưu trữ cho TB_USER
CREATE PROCEDURE [dbo].[spUSER_GET]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM TB_USER;
END;
GO
/****** Object:  StoredProcedure [dbo].[spUSER_INSERT]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUSER_INSERT]
    @sMS nvarchar(30),
    @sHOTEN nvarchar(50),
    @tNGAYSINH datetime,
    @sEMAIL varchar(255),
    @sUSERNAME varchar(50),
    @sPASS varchar(64)
AS
BEGIN
    INSERT INTO [dbo].[TB_USER] ([sMS], [sHOTEN], [tNGAYSINH], [sEMAIL], [sUSERNAME], [sPASS])
    VALUES (@sMS, @sHOTEN, @tNGAYSINH, @sEMAIL, @sUSERNAME, @sPASS);
    SET @sMS = @@IDENTITY;
END;
GO
/****** Object:  StoredProcedure [dbo].[spUSER_UPDATE]    Script Date: 15-07-2024 9:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUSER_UPDATE]
    @sMS nvarchar(30),
    @sHOTEN nvarchar(50),
    @tNGAYSINH datetime,
    @sEMAIL varchar(255),
    @sUSERNAME varchar(50),
    @sPASS varchar(64)
AS
BEGIN
    UPDATE TB_USER
    SET sHOTEN = @sHOTEN, 
        tNGAYSINH = @tNGAYSINH,
        sEMAIL = @sEMAIL,
        sUSERNAME = @sUSERNAME,
        sPASS = @sPASS
    WHERE sMS = @sMS;
END;
GO
USE [master]
GO
ALTER DATABASE [QLTHITRACNGHIEM] SET  READ_WRITE 
GO
