import 'dart:async' show Future;
import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;
Future<String> loadCSV() async {
  return await rootBundle.loadString('data/instrument_tunings_parsed.csv');
}

List<Instrument> parseCSV(String csvStr) {
  List<List<dynamic>> rowsAsListOfValues = const CsvToListConverter().convert(csvStr);
  return rowsAsListOfValues.map((line) {
    return new Instrument(line[1], line[4]);
  }).toList();
}

class Instrument {
  Instrument(String name, String notes) {
    this.name = name;
    this.notes = notes;
  }

  String getId() {return this.name;}
  String name;
  String notes;
  bool starred = false;
}

final List<Instrument> instrumentsStore = [
  Instrument("Ahenk", "A3:A3:B3:B3:E4:E4:A4:A4:D5:D5:G5:G5"),
  Instrument("Akkordolia", "F2:A2:C3:F3"),
  Instrument("Archlute", "F1:F2:G1:G2:A1:A2:B1:B2:C2:C3:D2:D3:E2:E3:F2:F3:G2:G2:C2:C2:F3:F3:A3:A3:D4:D4:G4"),
  Instrument("Armonico", "E3:A3:D4:G4:G4:B3:E4"),
  Instrument("Arpeggione", "E2:A2:D3:G3:B3:E4"),
  Instrument("Autoharp", "F2:G2:C3:D3:E3:F3:G3:A3:B3:C4:D4:E4:F4:G4:A4:B4:C5:D5:E5:F5:G5:A5:B5:C6"),
  Instrument("Baglamas", "D4:D5:A4:A4:D5:D5"),
  Instrument("Bajo quinto", "A2:A1:D3:D2:G2:G2:C3:C3:F3:F3"),
  Instrument("Bajo Sexto", "E2:E1:A2:A1:D3:D2:G2:G2:C3:C3:F3:F3"),
  Instrument("Balalaika - Alto", "E3:E3:A3"),
  Instrument("Balalaika - Bass", "E2:A2:D3"),
  Instrument("Balalaika - Contrabass", "E1:A1:D2"),
  Instrument("Balalaika - Descant", "E5:E5:A5"),
  Instrument("Balalaika - Piccolo", "B4:E5:A5"),
  Instrument("Balalaika - Prima", "E4:E4:A4"),
  Instrument("Balalaika - Prima - 6-string", "E4:E4:E4:E4:A4:A4"),
  Instrument("Balalaika - Secunda", "A3:A3:D4"),
  Instrument("Balalaika - Tenor", "E3:A3:E4"),
  Instrument("Bandola Andina Colombiana", "B3:B3:E4:E4:E4:A4:A4:A4:D5:D5:D5:G5:G5:G5"),
  Instrument("Bandola Llanera", "A2:D3:A3:E4"),
  Instrument("Bandola Oriental", "G3:G3:D4:D4:A4:A4:E5:E5"),
  Instrument("Bandolin", "E5:E4:E5:A5:A4:A5:D5:D5:D5:B5:B5:B5"),
  Instrument("Bandurria - Philippine", "B3:B3:E4:E4:A4:A4:A4:D5:D5:D5:G5:G5:G5"),
  Instrument("Bandurria - Spanish", "B4:B4:E5:E5:A5:A5"),
  Instrument("Banjo (5-string)", "G4:D3:G3:B3:D4"),
  Instrument("Banjo - Bass", "E1:A1:D2:G2"),
  Instrument("Banjo - Cello", "C2:G2:D3:A3"),
  Instrument("Banjo - Cello", "G3:D2:G2:B2:D3"),
  Instrument("Banjo - Contrabass", "E1:A1:D2"),
  Instrument("Banjo - Long Neck", "E4:B2:E3:B3"),
  Instrument("Banjo - Plectrum", "C3:G3:B3:D4"),
  Instrument("Banjo - Tenor", "C3:G3:D4:A4"),
  Instrument("Banjolin", "G3:D4:A4:E5"),
  Instrument("Baryton", "A1:D2:G3:C3:E3:A3:D4"),
  Instrument("Biscernica - 5 string", "B3:E4:E4"),
  Instrument("Bisernica - 6 string", "E3:A3:D4:D4:G4:G4"),
  Instrument("Bordonua", "A2:A3:D4:D3:B3:B3:E4:E4"),
  Instrument("Bouzouki", "C3:C4:F3:F4:A3:A3:D4:D4"),
  Instrument("Bouzouki", "D3:D4:A3:A3:D4:D4"),
  Instrument("Brac - 5 string", "E3:A3:D4:G4:G4"),
  Instrument("Brac - 6 string", "G3:G3:D4:D4:A4:A4"),
  Instrument("Braguinha", "D4:B4:G4:D5"),
  Instrument("Bugarija - 5 string", "G2:B2:D3:G3:G3"),
  Instrument("Bugarija - 6 string", "G2:B2:D3:D3:G3:G3"),
  Instrument("Cak", "D5:D5:G4:B4"),
  Instrument("Cavaquinho", "D4:G4:B4:D5"),
  Instrument("Cello", "C2:G2:D3:A3"),
  Instrument("Čelovič - 4 string", "E2:A2:D3:G3"),
  Instrument("Čelovič - Farkas", "D2:G2:C3:C3:G3:G3"),
  Instrument("Cetera", "C3:C3:D3"),
  Instrument("Chanzy", "F2:C3:F3"),
  Instrument("Chapey", "F3:F3:B3"),
  Instrument("Chapman Stick", "E3:A2:D2:G1:C1:B2:E3:A3:D4"),
  Instrument("Chapman Stick - Grand Stick", "B3:E3:A2:D2:G1:C1:B2:E3:A3:D4"),
  Instrument("Charango", "G4:G4:C5:C5:E5:E4:A4:A4:E5:E5"),
  Instrument("Charango - Ranka", "G4:G4:C5:C5:E5:E4:A4:A4:E5:E5:E6:D4:D4:A4:A4:G5:G4:C5:C5:G5:G5:G6"),
  Instrument("Charangón", "D4:D4:G4:G4:B4:B3:E4:E4:B4:B4"),
  Instrument("Chillador", "G3:G3:C4:C4:E4:E3:A3:A3:E4:E4"),
  Instrument("Chitarra battente", "A3:A3:D4:D4:G3:G3:B3:B3:E4:E4"),
  Instrument("Chonguri", "D2:F2:D3:A2"),
  Instrument("Çiftelia", "B3:E3"),
  Instrument("Cinco Cuatro", "G3:D4:D3:B4"),
  Instrument("Cittern", "C2:C2:G2:G2:D3:D3:A3:A3:D4:D4"),
  Instrument("Cretan lyra", "D3:A3:E5"),
  Instrument("Crwth", "G2:C3:C2:D2:D3"),
  Instrument("Cuatro Alto", "B3:B4:E4:E4:A4:A4:D5:D5"),
  Instrument("Cuatro Antiguo", "A3:A3:E4:E4:A4:A4:D5:D5"),
  Instrument("Cuatro Bajo", "E3:E2:A3:A2:D3:D3:G3:G3:C4:C4"),
  Instrument("Cuatro Cubano", "G4:G3:C4:C4:E4:E4:A4:A4"),
  Instrument("Cuatro Soprano", "B4:B4:E5:E5:A5:A5"),
  Instrument("Cuatro - Puerto Rican", "B3:B2:E4:E3:A3:A3:D4:D4:G4:G4"),
  Instrument("Cuatro - Venezuelan", "A3:D4:B3"),
  Instrument("Cuk", "G4:B3:E3"),
  Instrument("Cümbüş", "A2:A2:B2:B2:E3:E3:A3:A3:D4:D4:G4:G4"),
  Instrument("Cümbüş - Tambur", "D2:D2:A2:A2:D3:D3"),
  Instrument("Cura", "D4:D4:A4:A4:E5:E5"),
  Instrument("Cura", "G3:G3:D4:D4:A4:A4:A4"),
  Instrument("Cura", "G3:G3:D4:D4:A4:A4:E5:E5"),
  Instrument("Đàn đáy", "G3:C4:F4"),
  Instrument("Đàn tranh", "G3:A3:C4:D4:E4:G4:A4:C5:D5:E5:G5:A5:C6:D6:E6:G7:A7"),
  Instrument("Dihu", "G2:D3:D3:A3"),
  Instrument("Domra - Alto", "C3:G3:D4:A4"),
  Instrument("Domra - Alto", "E3:A3:D4"),
  Instrument("Domra - Bass", "C2:G2:D3:A3"),
  Instrument("Domra - Bass", "E2:A2:D3"),
  Instrument("Domra - Contrabass", "E1:A1:D2"),
  Instrument("Domra - Contrabass", "E1:A1:D2:G2"),
  Instrument("Domra - Mezzo-soprano", "B3:E4:A4"),
  Instrument("Domra - Piccolo", "B4:E5:A5"),
  Instrument("Domra - Piccolo", "C4:G4:D5:A5"),
  Instrument("Domra - Prima", "E4:A4:D5"),
  Instrument("Domra - Prima", "G3:D4:A4:E5"),
  Instrument("Domra - Tenor", "B2:E3:A3"),
  Instrument("Domra - Tenor", "G2:D3:A3:E4"),
  Instrument("Dotar", "D3:G3"),
  Instrument("Dotara", "B4"),
  Instrument("Dotara", "G2:G3:C4:G4:G4:C5"),
  Instrument("Double bass", "E1:A1:D2:G2"),
  Instrument("Double bass - 5-string", "C1:E1:A1:D2:G2"),
  Instrument("Dranyen", "A3:A3:D3:D3:G3:G3"),
  Instrument("Dranyen", "A3:A3:D4:D3:D3:G3:G3"),
  Instrument("Erhu", "D4:A4"),
  Instrument("Fiddle", "G3:D4:A4:E5"),
  Instrument("Gadulka", "A3:E3:A4"),
  Instrument("Gaoyinruan", "G3:D4:G4:D5"),
  Instrument("Gehu", "C2:G2:D3:A3"),
  Instrument("Gekkin", "A3:D4:D4:D5"),
  Instrument("Geyerleier", "E3:E2:B3:B2:E3:E3:B3:B3"),
  Instrument("Grajappi", "F2:F2:B2:B2"),
  Instrument("Guitalele", "A2:D3:G3:C4:E4:A4"),
  Instrument("Guitar", "E2:A2:D3:G3:B3:E4"),
  Instrument("Guitar - 10 string", "C2:E2:A2:D3:G3:B3:E4"),
  Instrument("Guitar - 12 string", "E3:E2:A3:A2:D4:D3:G4:G3:B3:B3:E4:E4"),
  Instrument("Guitar - 7 string", "B1:E2:A2:D3:G3:B3:E4"),
  Instrument("Guitar - 8 string (low/high)", "B1:E2:A2:D3:G3:B3:E4:A4"),
  Instrument("Guitar - 9 string", "E2:A2:D3:G4:G3:B3:B3:E4:E4"),
  Instrument("Guitar - 9 string", "E3:E2:A3:A2:D4:D3:G3:B3:E4"),
  Instrument("Guitar - Alto (Niibori)", "B2:E3:A3:D4"),
  Instrument("Guitar - bass", "E1:A1:D2:G2"),
  Instrument("Guitar - bass (12-string)", "E2:E2:E1:A2:A2:A1:D3:D3:D2:G3:G3:G2"),
  Instrument("Guitar - bass (5-string)", "B0:E1:A1:D2:G2:E1:A1:D2:G2"),
  Instrument("Guitar - bass (6-string)", "B0:E1:A1:D2:G2:C3"),
  Instrument("Guitar - bass (8-string)", "E2:E1:A2:A1:D3:D2:G3:G2"),
  Instrument("Guitar - octave", "E3:A3:D4:G4:B4:E5"),
  Instrument("Guitar - tenor", "C3:G3:D4:A4"),
  Instrument("Guitarra De Golpe", "D3:G3:C4:E3:A3"),
  Instrument("Guitarro", "B4:D5:A5:E5"),
  Instrument("Guitarrón", "A1:D2:G2:C3:E3:A2"),
  Instrument("Guitarron Argentino", "B1:E2:A2:D3:G3:B3"),
  Instrument("Gusli", "E3:A3:B3:C4:D4:E4:F4:G4"),
  Instrument("Halszither", "G2:D3:D3:G3:G3:B3:B3:D4:D4"),
  Instrument("Hardingfele", "A3:D4:A4:E5"),
  Instrument("Huapanguera", "G2:D3:D4:G3:G3:B3:B3:E3"),
  Instrument("Huobosi", "E2:A2:D3:G3"),
  Instrument("Irish bouzouki", "G3:G2:D4:D3:A3:A3:E4:E4"),
  Instrument("Jarana huasteca", "G3:B3:D4:A4"),
  Instrument("Jarana Jarocha Requinto", "G2:A2:D2:G3"),
  Instrument("Jarana Leona", "G2:A2:D3:G3"),
  Instrument("Kamancheh", "D5:A5:D4:A4"),
  Instrument("Khonkhota", "G4:G3:C4:D4:D3:A3:D4:D4"),
  Instrument("Kithara Sarda", "B2:E2:A2:D3:F3:B3"),
  Instrument("Kokles", "G3:A3:C3:D3:E3:F3:G4:A4:B4:C4:G3:A3:C3:D3:E3:F3:G4:A4:B4:C4"),
  Instrument("Laouto", "C2:C3:G2:G3:D2:D3:A3:A3"),
  Instrument("Laúd - Cuban", "D3:D3:B3:B3:E4:E4:A4:A4:D5:D5"),
  Instrument("Laúd - Philippine", "B2:B2:E3:E3:A3:A3:A3:D4:D4:D4:G4:G4:G4"),
  Instrument("Lili'u", "G3:G4:C3:C4:E4:E4:A4:A4"),
  Instrument("Liuto cantabile", "C2:C2:G2:G2:D3:D3:A3:A3:E4:E4"),
  Instrument("Luc huyen cam", "C3:F3:C4:G4:C5"),
  Instrument("Luc huyen cam", "E2:A2:D3:G3:B4:E4"),
  Instrument("Lute", "G2:G2:C3:C3:F3:F3:A3:A3:D4:D4:G4:G4"),
  Instrument("Lute guitar", "E2:A2:D3:G3:B3:E4"),
  Instrument("Mandobass", "E1:A1:D2:G2"),
  Instrument("Mandobass", "G1:G1:D2:D2:A2:A2:E3:E3"),
  Instrument("Mandocello", "C2:C2:G2:G2:D3:D3:A3:A3"),
  Instrument("Mandola", "C3:C3:G3:G3:D4:D4:A4:A4"),
  Instrument("Mandolin", "G3:G3:D4:D4:A4:A4:E5:E5"),
  Instrument("Mandolin - Octave", "G2:G2:D3:D3:A3:A3:E4:E4"),
  Instrument("Mandolin - Piccolo", "C4:C4:G4:G4:D5:D5:A5:A5"),
  Instrument("Mandolinetto", "G3:G3:D4:D4:A4:A4:E5:E5"),
  Instrument("Mandriola", "G3:G3:G3:D4:D4:D4:A4:A4:A4:E5:E5:E5"),
  Instrument("Manguerito", "D4:G4:B4:B3:E4:B4:B4"),
  Instrument("Nevoud", "B2:B2:E3:E3:A3:A3:D4:D4"),
  Instrument("Octavina", "B1:B1:E2:E2:A2:A2:A2:D3:D3:D3:G3:G3:G3"),
  Instrument("Octobass", "C1:G1:C2"),
  Instrument("Oud", "C2:F2:A2:D3:G3:C4"),
  Instrument("Palida", "D3:A3:E4:B4"),
  Instrument("Panduri", "G3:A3:C4"),
  Instrument("Pardessus de Viole", "C4:E4:A4:D5"),
  Instrument("Phin", "A3:E4:A4"),
  Instrument("Pipa", "A2:D3:E3:A3"),
  Instrument("Portuguese guitar", "D3:D2:A3:A2:B3:B2:E3:E3:A3:A3:B3:B3"),
  Instrument("Qinqin", "G3:D4:A5"),
  Instrument("Ramkie", "C3:F3:A3:C4"),
  Instrument("Requinto", "A2:D3:G3:C4:E4:A4"),
  Instrument("Ronroco", "D4:D4:G4:G4:B4:B3:E4:E4:B4:B4"),
  Instrument("Russian guitar", "D2:G2:B2:D3:G3:B3:D4"),
  Instrument("Samica", "B3:E4"),
  Instrument("Sanshin", "C3:F3:C4"),
  Instrument("Sanxian", "A2:D3:A3"),
  Instrument("Sanxian - Large", "G2:D3:G3"),
  Instrument("Sarangi - Nepalese", "G4:C5:C5:G5"),
  Instrument("Sargija", "C3:C3:G3:G3:D3:D3"),
  Instrument("Seis Cinco", "E3:A4:A3:D3:B4"),
  Instrument("Setar", "C3:C4:G3:C4"),
  Instrument("Sitar", "C5:C4"),
  Instrument("Socavon", "G3:D4:A4:B2"),
  Instrument("Strumstick", "G3:D4:G4"),
  Instrument("Swedish lute (modern)", "F1:G1:A1:B1:C2:D2"),
  Instrument("Tambura", "D3:D3:G3:G3:B3:B3:E4:E4"),
  Instrument("Tarica", "C2:G2:G2:C3:C3"),
  Instrument("Taropatch", "G3:C3:C4:E4:A4:A4"),
  Instrument("Terzin Kitarra", "B2:E3:A3:E4"),
  Instrument("Timple", "G4:C5:E4:A4:D5"),
  Instrument("Tiple de Menorca", "D4:G4:C5:E5:A5"),
  Instrument("Tiple Requinto", "C4:C4:C4:E4:E4:E4:A4:A4:A4:D4:D4:D4"),
  Instrument("Tiple - American", "A4:A3:D4:D3:D4:B3:B3"),
  Instrument("Tiple - Columbian", "C4:C3:C4:E4:E3:E4:A4:A3:A4:D4:D4:D4"),
  Instrument("Tiple - Puerto Rican", "E3:A3:D4:G4:C5"),
  Instrument("Tres - Cuban", "G4:G3:C4:C4:E3:E4"),
  Instrument("Tres - Puerto Rican", "G4:G3:G4:C4:C4:C4:E4:E3:E4"),
  Instrument("Tricordia", "G2:G3:G3:D3:D4:D4:A3:A4:A4:E4:E5:E5"),
  Instrument("Tzouras", "D3:D4:A3:A3:D4:D4"),
  Instrument("Ukulele - Baritone", "D3:G3:B3:E4"),
  Instrument("Ukulele - Bass", "E2:A2:D3:G3"),
  Instrument("Ukulele - Concert", "G4:C4:E4:A4"),
  Instrument("Ukulele - Contrabass (UBass)", "E1:A1:D2:G2"),
  Instrument("Ukulele - Pocket", "C5:F5:A5"),
  Instrument("Ukulele - Soprano", "G4:C4:E4:A4"),
  Instrument("Ukulele - Tahitian", "G4:G4:C5:C5:E5:E5:A4:A4"),
  Instrument("Ukulele - Tenor", "G3:C4:E4:A4"),
  Instrument("Veena", "C3:D3:E3:F3:G3:A3:B3"),
  Instrument("Vihuela", "A3:D4:G4:B3:E4"),
  Instrument("Viol - alto", "A2:D3:G3:B3:E4:A4"),
  Instrument("Viol - bass", "A1:D2:G2:C3:E3:A3:D4"),
  Instrument("Viol - bass", "D2:G2:C3:E3:A3:D4"),
  Instrument("Viol - contrabass", "D1:G1:C2:E2:A2:D3"),
  Instrument("Viol - Tenor", "G2:C3:F3:A3:D4:G4"),
  Instrument("Viol - Treble", "D3:G3:C4:E4:A4:D5"),
  Instrument("Viola", "C3:G3:D4:A4"),
  Instrument("Viola Amarantina", "D3:D2:A3:A2:B3:B2:E3:E3:A3:A3"),
  Instrument("Viola Beiroa", "D3:D3:A3:A2:D3:D2:G3:G2:B3:B3:D3:D3"),
  Instrument("Viola Braguesa", "C4:C3:G4:G3:A4:A3:D4:D4:G4:G4"),
  Instrument("Viola caipira", "A3:A2:D4:D2:A3:A3:D4:D4"),
  Instrument("Viola Campaniça", "C3:C2:F3:F2:C3:C3:E3:E3:G3:G3"),
  Instrument("Viola Da Terra", "A3:A3:A2:D4:D4:D3:G3:G3:B3:B3:D4:D4"),
  Instrument("Viola De Arame", "G3:G2:D3:D2:G3:G3:B3:D3:D3"),
  Instrument("Viola de cocho", "G3:D3:E3:A3:D4"),
  Instrument("Viola Terceira", "E3:E3:E2:A3:A3:A2:D4:D4:D3:G4:G3:B3:B3:E3:E3"),
  Instrument("Viola Toeira", "A3:A3:A2:D4:D4:D3:G4:G3:B3:B3:E3:E3"),
  Instrument("Violao De Sete Cordas", "C2:E2:A2:D3:G3:B3:E4"),
  Instrument("Violin", "G3:D4:A4:E5"),
  Instrument("Violin - Tenor", "G2:D3:A3:E4"),
  Instrument("Waldzither - bass", "A2:E3:E3:A3"),
  Instrument("Waldzither - descant", "G3:D4:D4:G4:G4:B4:B4:D5"),
  Instrument("Waldzither - Heym", "C2:C2:G3:G3:G3:C4:C4:C4:E4:E4:E4:G4:G4"),
  Instrument("Waldzither - piccolo", "C4:G4:G4:C5:C5:E5:E5:G5:G5"),
  Instrument("Waldzither - tenor", "C3:G3:G3:C4:C4:E4:E4:G4:G4"),
  Instrument("Yayli Tambur", "D2:D2:A2:A2:D3:D3"),
  Instrument("Yueqin", "G3:D4:G4:D5"),
  Instrument("Yueqin - Taiwanese", "D3:A4"),
  Instrument("Zheng", "C2:D2:E2:G2:A2:C3:D4:E4:G4:A4:C4:D4:E4:G4:A4:C5:D5"),
  Instrument("Zhonghu", "G3:D4:A3:E4"),
  Instrument("Zhongruan", "G2:D3:G3:D4"),
  Instrument("Zither - Alpine", "A4:A4:D4:G3:C3"),
  Instrument("Zither - Concert", "A4:A4:D4:G3:C3"),
];