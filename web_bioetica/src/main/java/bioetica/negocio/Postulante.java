package bioetica.negocio;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bioetica.datos.Conexion;

public class Postulante {
	private String cedula;
	private String nombre;
	private String correo;
	private String celular;
	private String hoja_vida;
	private boolean estado;

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getHoja_vida() {
		return hoja_vida;
	}

	public void setHoja_vida(String hoja_vida) {
		this.hoja_vida = hoja_vida;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public Postulante() {
		// TODO Auto-generated constructor stub
	}
	
	//Consultar postulates
	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_postulantes ORDER BY estado";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>CI</th><th>Nombre</th><th>Hoja de vida</th><th>Estado</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
		while(rs.next())
		{
			tabla+="<tr><td>"+rs.getString(1)+"</td>"
			+ "<td>"+rs.getString(2)+"</td>"
			+ "<td>"+rs.getString(5)+"</td>"
			+ "<td>"+rs.getBoolean(6)+"</td>"
			+ "<td><a href=aceptarPst.jsp?cod=" + rs.getString(1) + "><pre style=\"text-align: center\">Aceptar</pre></a></td>"
			+ "<td><a href=negarPst.jsp?cod=" + rs.getString(1) + "><pre style=\"text-align: center\">Rechazar</pre></a></td>"
			+ "</td></tr>";
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	public String consulta_unica(String ci, boolean respuesta)
	{
		String estado="";
		String sql="SELECT * FROM tb_postulantes WHERE ci = '" + ci + "';";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>CI</th><th>Nombre</th><th>Estado</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		if(respuesta == true) {
			estado="Aprobado";
		}else {
			estado="Denegado";
		}
		try {
		while(rs.next())
		{
			tabla+="<tr><td>"+rs.getString(1)+"</td>"
			+ "<td>"+rs.getString(2)+"</td>"
			+ "<td>"+rs.getBoolean(estado)+"</td>"
			+ "</td></tr>";
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	
	
	public boolean aceptarPostulacion(String ci_pst){
		String sql = "SELECT * FROM tb_postulantes WHERE ci = '" + ci_pst + "';";
		boolean respuesta = false;
		ResultSet rs = null;
		Conexion con = new Conexion();
		System.out.print(sql);
		rs = con.Consulta(sql);
		try {
			if(rs.next()) {
				String actualizar = "UPDATE tb_postulantes SET estado = " + true + " WHERE ci = '" + ci_pst + "';";
				con.Ejecutar(actualizar);
				respuesta = true;
			}else {
				respuesta = false;
				rs.close();
			}
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return respuesta;
	}
	
	public boolean negarPostulacion(String ci_pst) {
		String sql = "SELECT * FROM tb_postulantes WHERE ci = '" + ci_pst + "';";
		boolean respuesta = false;
		ResultSet rs = null;
		Conexion con = new Conexion();
		System.out.print(sql);
		rs = con.Consulta(sql);
		try {
			if(rs.next()) {
				String actualizar = "UPDATE tb_postulantes SET estado = " + false + " WHERE ci = '" + ci_pst + "';";
				con.Ejecutar(actualizar);
				respuesta = true;
			}else {
				respuesta = false;
				rs.close();
			}
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return respuesta;
	}
	
	//Ingresar datos del postulante
	public String ingresarPostulanteData(String cedula, String nombre, String correo, String celular, String hv, boolean estado) {
		String resultado="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO public.tb_postulantes " + "	(ci, nombre, correo, celular, hoja_vida, estado) " + "	VALUES (?, ?, ?, ?, ?, ?);";
		try {
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1, cedula);
			pr.setString(2, nombre);
			pr.setString(3, correo);
			pr.setString(4, celular);
			pr.setString(5, hv);
			pr.setBoolean(6, estado);
			if(pr.executeUpdate()==1) {
				resultado="Solicitud enviada";
			} else {
				resultado="Error al enviar la solicitud";
			}
			} catch(Exception ex) {
				resultado=ex.getMessage();
				} finally 
		{ 
					try {
						pr.close();
						con.getConexion().close();
						} catch(Exception ex) {
							System.out.print(ex.getMessage());
							}
					}
		return resultado;
	}
	

}
