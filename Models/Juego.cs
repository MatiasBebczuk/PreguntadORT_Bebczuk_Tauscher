using PreguntadORT.Models;

static class Juego{
    public static string? Username;
    public static int puntajeActual;
    private static int contadorPreguntaActual;
    private static int cantidadPreguntasCorrectas;
    private static List<Preguntas> Preguntas = new();
    private static List<Respuestas> preguntasxRespuesta = new();
    private static int preguntaElegida;

    public static void InicializarJuego(){
        puntajeActual=0;
        cantidadPreguntasCorrectas=0;
        contadorPreguntaActual=0;
    }
    public static List<Categorias> ObtenerCategorias(){
        return BD.ObtenerCategorias();
    }
    public static List<Dificultades> ObtenerDificultades(){
        return BD.ObtenerDificultades();
    }
    public static void CargarPartida(string Usuario, int dificultad, int categoria){
        InicializarJuego();
        Username=Usuario;
        Preguntas=BD.ObtenerPreguntas(dificultad, categoria);
    }
    public static Preguntas? ObtenerProximaPregunta(){
        if(Preguntas.Count!=0){
            return Preguntas[preguntaElegida];
        }
        else{
            return null;
        }
    }
    public static List<Respuestas> ObtenerProximasRespuestas(int idPregunta){
        return BD.ObtenerRespuestas(idPregunta);
    }
    public static bool VerificarRespuesta(int idRespuesta){
        bool EsCorrecto=BD.EsCorrecta(idRespuesta);
        if(EsCorrecto==true){
            puntajeActual=puntajeActual+50;
            cantidadPreguntasCorrectas++;
        }
        Preguntas.RemoveAt(preguntaElegida);
        return EsCorrecto;

    }
}