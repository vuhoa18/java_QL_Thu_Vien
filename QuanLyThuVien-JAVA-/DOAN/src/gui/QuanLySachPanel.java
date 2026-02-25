package gui;

import bus.SachBUS;
import dao.NhaXuatBanDAO;
import dao.TacGiaDAO;
import dao.TheLoaiDAO;
import dto.NhaXuatBanDTO;
import dto.SachDTO;
import dto.TacGiaDTO;
import dto.TheLoaiDTO;
import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;
import util.Formatter;

public class QuanLySachPanel extends JPanel {

    private SachBUS sachBUS = new SachBUS();
    private JTable tblSach;
    private DefaultTableModel model;

    // Các ô nhập liệu
    private JTextField txtMa, txtTen, txtNamXB, txtSoLuong, txtDonGia, txtSoTrang, txtTimKiem;
    private JComboBox<String> cboTacGia, cboTheLoai, cboNXB;
    private JButton btnThem, btnSua, btnXoa, btnLamMoi, btnTimKiemNC;

    public QuanLySachPanel() {
        initComponents();
        loadDuLieuLenComboBox(); // Đổ dữ liệu vào ComboBox trước
        loadDataLenBang(sachBUS.getList()); // Đổ danh sách Sách lên bảng
    }

    private void initComponents() {
        setLayout(new BorderLayout());

        // --- 1. TIÊU ĐỀ ---
        JLabel lblTitle = new JLabel("QUẢN LÝ KHO SÁCH");
        lblTitle.setFont(new Font("Segoe UI", Font.BOLD, 24));
        lblTitle.setForeground(new Color(25, 118, 210));
        lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
        lblTitle.setBorder(BorderFactory.createEmptyBorder(15, 0, 15, 0));
        add(lblTitle, BorderLayout.NORTH);

        // --- 2. BẢNG VÀ TÌM KIẾM (GIỮA) ---
        JPanel pnlCenter = new JPanel(new BorderLayout());
        
        JPanel pnlSearch = new JPanel(new FlowLayout(FlowLayout.LEFT));
        pnlSearch.add(new JLabel("Tìm nhanh (Tên/Mã):"));
        txtTimKiem = new JTextField(25);
        pnlSearch.add(txtTimKiem);
        btnTimKiemNC = new JButton("Tìm nâng cao");
        pnlSearch.add(btnTimKiemNC);
        pnlCenter.add(pnlSearch, BorderLayout.NORTH);

        String[] cols = {"Mã Sách", "Tên Sách", "Tác Giả", "Thể Loại", "NXB", "Năm XB", "Trang", "Số Lượng", "Đơn Giá"};
        model = new DefaultTableModel(cols, 0);
        tblSach = new JTable(model);
        tblSach.setRowHeight(30);
        
        // Sự kiện click vào bảng
        tblSach.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                fillForm();
            }
        });
        pnlCenter.add(new JScrollPane(tblSach), BorderLayout.CENTER);
        add(pnlCenter, BorderLayout.CENTER);

        // --- 3. FORM NHẬP LIỆU (DƯỚI) ---
        JPanel pnlSouth = new JPanel(new BorderLayout());
        
        JPanel pnlInput = new JPanel(new GridLayout(4, 5, 10, 10)); // 4 dòng, 5 cột
        pnlInput.setBorder(new TitledBorder("Thông tin sách"));
        pnlInput.setPreferredSize(new Dimension(0, 200));
        
        txtMa = new JTextField(); 
        txtTen = new JTextField();
        txtNamXB = new JTextField();
        txtSoLuong = new JTextField();
        txtDonGia = new JTextField();
        txtSoTrang = new JTextField();
        cboTacGia = new JComboBox<>();
        cboTheLoai = new JComboBox<>();
        cboNXB = new JComboBox<>();

        pnlInput.add(new JLabel("Mã Sách:")); pnlInput.add(txtMa);
        pnlInput.add(new JLabel("Tên Sách:")); pnlInput.add(txtTen);
        pnlInput.add(new JLabel("Đơn Giá:")); pnlInput.add(txtDonGia);
        
        pnlInput.add(new JLabel("Tác Giả:")); pnlInput.add(cboTacGia);
        pnlInput.add(new JLabel("Thể Loại:")); pnlInput.add(cboTheLoai);
        pnlInput.add(new JLabel("Số Lượng:")); pnlInput.add(txtSoLuong);

        pnlInput.add(new JLabel("NXB:")); pnlInput.add(cboNXB);
        pnlInput.add(new JLabel("Năm XB:")); pnlInput.add(txtNamXB);
        pnlInput.add(new JLabel("Số Trang:")); pnlInput.add(txtSoTrang);

        // Các nút chức năng
        JPanel pnlBtn = new JPanel();
        btnThem = new JButton("Thêm"); btnSua = new JButton("Sửa"); 
        btnXoa = new JButton("Xóa"); btnLamMoi = new JButton("Làm mới");
        pnlBtn.add(btnThem); pnlBtn.add(btnSua); pnlBtn.add(btnXoa); pnlBtn.add(btnLamMoi);

        pnlSouth.add(pnlInput, BorderLayout.CENTER);
        pnlSouth.add(pnlBtn, BorderLayout.SOUTH);
        add(pnlSouth, BorderLayout.SOUTH);

        // --- 4. SỰ KIỆN NÚT BẤM ---
        btnThem.addActionListener(e -> xuLyThem());
        btnSua.addActionListener(e -> xuLySua());
        btnXoa.addActionListener(e -> xuLyXoa());
        btnLamMoi.addActionListener(e -> lamMoi());

        // Sự kiện gõ phím tìm kiếm nhanh trên RAM
        txtTimKiem.addKeyListener(new KeyAdapter() {
            public void keyReleased(KeyEvent e) {
                ArrayList<SachDTO> list = sachBUS.timKiemTrenRAM(txtTimKiem.getText());
                loadDataLenBang(list);
            }
        });
        
        btnTimKiemNC.addActionListener(e -> {
            JOptionPane.showMessageDialog(this, "Chức năng Tìm kiếm Nâng cao sẽ mở ở Form khác!");
            // Bước tiếp theo tôi sẽ hướng dẫn bạn làm Form TimKiemNangCaoDialog
        });
    }

    // --- HÀM HỖ TRỢ ĐỔ DỮ LIỆU ---
    private void loadDuLieuLenComboBox() {
        // Load Tác Giả
        ArrayList<TacGiaDTO> listTG = new TacGiaDAO().selectAll();
        for (TacGiaDTO tg : listTG) {
            cboTacGia.addItem(tg.getMaTG() + " - " + tg.getHoTen());
        }
        
        // Load Thể Loại
        ArrayList<TheLoaiDTO> listTL = new TheLoaiDAO().selectAll();
        for (TheLoaiDTO tl : listTL) {
            cboTheLoai.addItem(tl.getMaTL() + " - " + tl.getTenTL());
        }
        
        // Load NXB
        ArrayList<NhaXuatBanDTO> listNXB = new NhaXuatBanDAO().selectAll();
        for (NhaXuatBanDTO nxb : listNXB) {
            cboNXB.addItem(nxb.getMaNXB() + " - " + nxb.getTenNXB());
        }
    }

    private void loadDataLenBang(ArrayList<SachDTO> list) {
        model.setRowCount(0);
        for (SachDTO s : list) {
            model.addRow(new Object[]{
                s.getMaSach(), s.getTenSach(), s.getMaTG(), s.getMaTL(),
                s.getMaNXB(), s.getNamXB(), s.getSoTrang(), s.getSoLuong(), 
                Formatter.FormatVND(s.getDonGia()) 
            });
        }
    }

    private void fillForm() {
        int row = tblSach.getSelectedRow();
        if (row >= 0) {
            txtMa.setText(model.getValueAt(row, 0).toString());
            txtTen.setText(model.getValueAt(row, 1).toString());
            
            // Xử lý chọn đúng ComboBox (Tìm item có chứa Mã)
            setComboBoxItem(cboTacGia, model.getValueAt(row, 2).toString());
            setComboBoxItem(cboTheLoai, model.getValueAt(row, 3).toString());
            setComboBoxItem(cboNXB, model.getValueAt(row, 4).toString());

            txtNamXB.setText(model.getValueAt(row, 5).toString());
            txtSoTrang.setText(model.getValueAt(row, 6).toString());
            txtSoLuong.setText(model.getValueAt(row, 7).toString());
            
            // Xóa chữ VNĐ và dấu phẩy để hiển thị lại số gốc
            String gia = model.getValueAt(row, 8).toString().replace(" VNĐ", "").replace(",", "");
            txtDonGia.setText(gia);
            
            txtMa.setEditable(false);
        }
    }

    private void setComboBoxItem(JComboBox<String> cbo, String ma) {
        for (int i = 0; i < cbo.getItemCount(); i++) {
            if (cbo.getItemAt(i).startsWith(ma + " - ")) {
                cbo.setSelectedIndex(i);
                break;
            }
        }
    }

    // --- CÁC HÀM XỬ LÝ (CRUD) ---
    private SachDTO layThongTinForm() throws Exception {
        SachDTO s = new SachDTO();
        s.setMaSach(txtMa.getText());
        s.setTenSach(txtTen.getText());
        s.setNamXB(Integer.parseInt(txtNamXB.getText()));
        s.setSoLuong(Integer.parseInt(txtSoLuong.getText()));
        s.setDonGia(Double.parseDouble(txtDonGia.getText()));
        s.setSoTrang(Integer.parseInt(txtSoTrang.getText()));
        
        // Cắt chuỗi để chỉ lấy MÃ (VD: "TG01 - Nam Cao" -> lấy "TG01")
        s.setMaTG(cboTacGia.getSelectedItem().toString().split(" - ")[0]);
        s.setMaTL(cboTheLoai.getSelectedItem().toString().split(" - ")[0]);
        s.setMaNXB(cboNXB.getSelectedItem().toString().split(" - ")[0]);
        return s;
    }

    private void xuLyThem() {
        try {
            SachDTO s = layThongTinForm();
            JOptionPane.showMessageDialog(this, sachBUS.themSach(s));
            loadDataLenBang(sachBUS.getList());
            lamMoi();
        } catch (Exception e) { JOptionPane.showMessageDialog(this, "Vui lòng kiểm tra lại số liệu!"); }
    }

    private void xuLySua() {
        try {
            SachDTO s = layThongTinForm();
            JOptionPane.showMessageDialog(this, sachBUS.suaSach(s));
            loadDataLenBang(sachBUS.getList());
        } catch (Exception e) { JOptionPane.showMessageDialog(this, "Vui lòng kiểm tra lại số liệu!"); }
    }

    private void xuLyXoa() {
        String ma = txtMa.getText();
        if (ma.isEmpty()) return;
        if (JOptionPane.showConfirmDialog(this, "Xóa sách " + ma + "?") == JOptionPane.YES_OPTION) {
            JOptionPane.showMessageDialog(this, sachBUS.xoaSach(ma));
            loadDataLenBang(sachBUS.getList());
            lamMoi();
        }
    }

    private void lamMoi() {
        txtMa.setText(""); txtMa.setEditable(true);
        txtTen.setText(""); txtNamXB.setText("");
        txtSoLuong.setText(""); txtDonGia.setText(""); txtSoTrang.setText("");
        if(cboTacGia.getItemCount() > 0) cboTacGia.setSelectedIndex(0);
        if(cboTheLoai.getItemCount() > 0) cboTheLoai.setSelectedIndex(0);
        if(cboNXB.getItemCount() > 0) cboNXB.setSelectedIndex(0);
        tblSach.clearSelection();
    }
    // --- HÀM MAIN TẠM THỜI ĐỂ CHẠY THỬ ĐỘC LẬP ---
  
}
