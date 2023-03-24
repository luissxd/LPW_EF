package dao;

public class OnpeDAO {
	//db.Db db = new db.Db("onpe");
	db.Db db = new db.Db("localhost", "sa", "xd", "onpe");
	//db.Db db = new db.Db("sql5108.site4now.net", "db_a952ba_onpe_admin", "onpe1234", "db_a952ba_onpe");

	public Object getVotos(int inicio, int fin) {
		db.Sentencia( String.format( "usp_getVotos %s,%s", inicio, fin ) );
		return db.getRegistros();
	}

	public Object getVotosDepartamento(String id) {
		db.Sentencia( String.format( "usp_getVotosDepartamento '%s'", id ) );
		return db.getRegistros();
	}
	
	public Object getVotosProvincia(String id) {
		db.Sentencia( String.format( "usp_getVotosProvincia '%s'", id ) );
		return db.getRegistros();
	}
	
	public Object getGrupoVotacion(String id) {
		db.Sentencia( String.format( "usp_getGrupoVotacion '%s'", id ) );
		return db.getRegistro();
	}

	public Object getDepartamentos(int inicio, int fin) {
		db.Sentencia( String.format( "usp_getDepartamentos %s,%s", inicio, fin ) );
		return db.getRegistros();
	}
	
}
