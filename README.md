# FeedMe

# Sobre
Projeto IOT desenvolvido através do programa de Férias Fit|Flex-Sorocaba/SP.

  Feed.me foi idealizado baseado no segmento da saúde, para oferecer propostas baseando-se em uma alimentação saudável visando a promoção da saúde do indivíduo.
  
   A aplicação consiste em uma pesquisa para coletar dados se baseando no gasto energético diário do indivíduo, para realizar essa tarefa foi desenvolvido um firmware no microcontrolador ESP 32 conectado ao sensor Heart Beat Rate para medir os batimentos cardiacos, simulando um smartwatch.
  Os dados da informação nutricional dos alimentos são coletados através da API spoonacular ( mais informações disponível em https://spoonacular.com/food-api), armazenado no Firebase em cloud, e então exibido no aplicativo Feed.me. Em conjunto com as informações coletadas do usuário, foi desenvolvido um algorítimo baseado na literatura para cálculo do gasto energético basal, onde é fornecida a informação sobre o quanto o indivíduo gasta de energia em Kcal quando está em estado de repouso, para que ofereça um norteamento da montagem de um cardápio que supra suas necessidades.
  Os dados da frequencia cardíaca são inseridos em um cálculo para indicar a faixa de queima de gordura em que um indivíduo pode alcançar de acordo com a atividade realizada no momento.
 
# Tecnologias utilizadas:
- Linguagem C
- Linguagem Dart
- Framework Flutter
- Banco de dados Firebase
- Spoonacular API

# Pré Requisitos:
- ESP 32 deckit
- Heart Rate Sensor 
- Cabo USB
- Aplicação Móvel Desenvolvida em Flutter

#Segue Esquema
<div align="center">
<img width="411" alt="Captura de tela_20230201_222554"src="https://user-images.githubusercontent.com/91417907/216208895-8c39cc12-d579-448d-a724-24969dc23fe7.png">
<div>

</div>
Compilador em linguagem C:![Captura de tela_20230201_222554](https://user-images.githubusercontent.com/91417907/216208877-dba82f1a-ced3-430d-9155-1ef2c3a30c6d.png)

#Instalação
  1-Clone este repositório para sua máquina local
  shell
  git clone
  
  2- Abra o projeto no seu ambiente de desenvolvimento Arduino (IDE)
  3- Conecte o ESP32 a sua máquina através do cabo USB
  4- Selecione o modelo correto de ESP32 na IDE (ferramentas > placa)
  5- Carregue o codigo fonte para o ESP32 (botão de upload)
  
  #Ligando o Sensor
  1- Conecte a saída analógica do sensor no pino GPIO 4 do ESP32
  2- Conecte a alimentação do sensor (3v3) ao pino 3.3V do ESP32
  3- Conecte o GND do sensorao GND do ESP32
  
  #Uso
  1- Inicie a aplicação móvel desenvolvida em Flutter
  2- Inicie a conexão Bluetooth entre o ESP32 e o dispositivo movel
  3-Os dados de batimentos cardíacos serão exibidos em tempo real na aplicação móvel
  
  #Licença
  Este projetoestá sob a licença MIT - consulte o arquivo Licence.md para obter mais detalhes.
  




