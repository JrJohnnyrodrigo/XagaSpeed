// ==========================
// CLASSES
// ==========================

class Entrega {
  String pedido;
  String endereco;
  String? complemento;
  String status;

  Entrega(
    this.pedido,
    this.endereco,
    this.status,
  );

  void alterarStatus(String novoStatus) {
  status = novoStatus;
}
}


// ==========================
// MAIN
// ==========================

void main() {
  String nomeApp = "XagaSpeed";
  double valorDiaria = 80.0;
  double valorPorEntrega = 5.0;
  int entregasConcluidas = 3;
  bool diariaAtiva = true;


  Entrega entrega1 = Entrega(
    "7777",
    "Rua das Palmeiras, 327",
    "Pendente",
  );
  entrega1.alterarStatus("Em rota");
  entrega1.complemento = "Apto 203";

  Entrega entrega2 = Entrega(
    "8888",
    "Rua B",
    "Pendente",
  );

  List<Entrega> entregas = [
    entrega1,
    entrega2,
  ];
  

  double saldoDia = calcularSaldo(
    valorDiaria,
    entregasConcluidas,
    valorPorEntrega,
  );
  

  print("App: $nomeApp");
  print("Saldo do dia: $saldoDia");


  if (diariaAtiva) {
    print("Diária em andamento");
  } else {
    print("Diária não iniciada");
  }

  for (Entrega entrega in entregas) {
    print("Pedido: ${entrega.pedido}");
    print("Endereço: ${entrega.endereco}");
    print("Complemento: ${entrega.complemento ?? "Sem complemento"}");
    print("Status: ${entrega.status}");
  }

}


// ==========================
// FUNÇÕES AUXILIARES
// ==========================

double calcularSaldo(
  double diaria,
  int entregas,
  double valorPorEntrega,
) {
  return diaria + (entregas * valorPorEntrega);
}