package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {
	DBConnectionMgr pool;
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	String sql;
	
	// DB ���� ������
	public ProductDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	// ��ǰ ���
	public void insert(ProductDTO dto) throws Exception {
		try {
			con = pool.getConnection();
			sql = "insert into product values (?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPid());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getDetail());
			ps.setInt(4, dto.getPrice());
			
			ps.executeUpdate();			
		}finally {
			if(ps != null) {ps.close();}
			if(con != null) {con.close();}
		}
		
	}
	
	// ��ǰ ���� ����
	public void update(ProductDTO dto) throws Exception {
		try {
			con = pool.getConnection();
			sql = "update product set detail = ?, price = ? where pid = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getDetail());
			ps.setInt(2, dto.getPrice());
			ps.setString(3, dto.getPid());
			
			ps.executeUpdate();			
		}finally {
			if(ps != null) {ps.close();}
			if(con != null) {con.close();}
		}
	}
	
	// ��ǰ ����
	public void delete(ProductDTO dto) throws Exception{
		try {
			con = pool.getConnection();
			sql = "delete from product where pid = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPid());
			
			ps.executeUpdate();			
		}finally {
			if(ps != null) {ps.close();}
			if(con != null) {con.close();}
		}
	}
	
	// ��ǰ ��ü ����Ʈ ���
	public ArrayList<ProductDTO> selectAll() throws Exception{
		ArrayList<ProductDTO> pList = new ArrayList<ProductDTO>();
		
		try {
			con = pool.getConnection();
			sql = "select * from product";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setPid(rs.getString("pid"));
				dto.setTitle(rs.getString("title"));
				dto.setDetail(rs.getString("detail"));
				dto.setPrice(rs.getInt("price"));
				
				pList.add(dto);
			}
		}finally {
			if(rs != null) {rs.close();}
			if(ps != null) {ps.close();}
			if(con != null) {con.close();}
		}
		return pList;
	}
	
	// ��ǰ �˻�
	public ProductDTO select(ProductDTO dto) throws Exception{
		ProductDTO dto2 = null;
		try {
			con = pool.getConnection();
			sql = "select * from product where pid = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPid());
			rs = ps.executeQuery();
			
			if(rs.next()) {
				dto2 = new ProductDTO();
				dto2.setPid(rs.getString("pid"));
				dto2.setTitle(rs.getString("title"));
				dto2.setDetail(rs.getString("detail"));
				dto2.setPrice(rs.getInt("price"));
			}
		}finally {
			if(rs != null) {rs.close();}
			if(ps != null) {ps.close();}
			if(con != null) {con.close();}
		}
		return dto2;
	}
}
