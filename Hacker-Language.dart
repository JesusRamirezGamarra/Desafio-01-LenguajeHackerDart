class HackerLanguageTransformer {
  static const Map<String, String> mapeo = {
    'a': '4',
    'b': 'I3',
    'c': '[',
    'd': ')',
    'e': '3',
    'f': '|=',
    'g': '&',
    'h': '#',
    'i': '1',
    'j': ',_|',
    'k': '>|',
    'l': '1',
    'm': '/\\/\\',
    'n': '^/',
    'o': '0',
    'p': '|*',
    'q': '(_,)',
    'r': 'I2',
    's': '5',
    't': '7',
    'u': '(_)',
    'v': '\\/',
    'w': '\\/\\/',
    'x': '><',
    'y': 'j',
    'z': '2',
    '1': 'L',
    '2': 'R',
    '3': 'E',
    '4': 'A',
    '5': 'S',
    '6': 'b',
    '7': 'T',
    '8': 'B',
    '9': 'g',
    '0': 'o',
  };

  String transformarTextoMap(String texto) {
    String textoMinusculas = texto.toLowerCase();
    String textoTransformado = '';
    for (int i = 0; i < texto.length; i++) {
      String caracter = textoMinusculas[i];
      textoTransformado += mapeo[caracter] ?? texto[i];
    }
    return textoTransformado;
  }
}

void main() {
  //String textoOriginal = "Hola, vengo en paz de la Tierra del año 2024!";
  String textoOriginal = "En los Andes peruanos, una noche estrellada, naves espaciales descendieron. Los extraterrestres, seres luminosos, deletrearon un mensaje: “Somos amigos”. Los niños deletrearon sus nombres: “A-B-E-L”, “Z-O-E”. Los números también aparecieron: “1-2-3-4-5”. El líder, Zork, habló de paz y sabiduría. El Perú unió dos mundos.";
  HackerLanguageTransformer oTransformador = HackerLanguageTransformer();
  String textoHacker = oTransformador.transformarTextoMap(textoOriginal);
  print("Texto original: $textoOriginal");
  print("Texto en lenguaje hacker: $textoHacker");
}
