package bioetica.seguridad;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bioetica.datos.*;

public class Usuario {
	private String nombre;
	private String direccion;
	private String login;
	private String clave;
	private int perfil;
	
	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public String getLogin() {
		return login;
	}


	public void setLogin(String login) {
		this.login = login;
	}


	public String getClave() {
		return clave;
	}


	public void setClave(String clave) {
		this.clave = clave;
	}


	public int getPerfil() {
		return perfil;
	}


	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}


	public Usuario() {
		// TODO Auto-generated constructor stub
	}
	
	public boolean verificarUsuario(String nlogin, String nclave)
	{
	boolean respuesta=false;
	String sentencia= "Select * from tb_usuario where login_us='"+nlogin+
	"' and clave_us='"+nclave+"';";
	//System.out.print(sentencia);
	try
	{
		ResultSet rs;
		Conexion clsCon=new Conexion();
		rs=clsCon.Consulta(sentencia);
		if(rs.next())
		{
		respuesta=true;
		this.setLogin(nlogin);
		this.setClave(nclave);
		this.setPerfil(rs.getInt(2));
		this.setNombre(rs.getString(3));
		}
		else
		{
		respuesta=false;
		rs.close();
		}
		}
		catch(Exception ex)
		{
		System.out.println( ex.getMessage());
		}
		return respuesta;
		}
	//Ingresar nuevos usuarios - perfil Postulante
	public String ingresarUsuario(int per, String nombre, String direccion, String login, String clave) {
		String resultado="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO public.tb_usuario " + "	(id_per, nombre_us, direccion_us, login_us, clave_us) " + "	VALUES (?, ?, ?, ?, ?);";
		try {
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,per);
			pr.setString(2, nombre);
			pr.setString(3, direccion);
			pr.setString(4, login);
			pr.setString(5, clave);
			if(pr.executeUpdate()==1) {
				resultado="Inserción correcta";
			} else {
				resultado="Error en inserción";
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

