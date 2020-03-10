#include <dht.h> // Incluir a biblioteca do sensor DHT11
dht DHT; // Inicializa o sensor com uma variavel DHT
void setup()
{
    Serial.begin(9600); // Inicializa o Monitor Serial
}
void loop() // LOOP
{
DHT.read11(A0); // Faz a leitura do sensor conectado no pino Analógico 0 (A0)
Serial.print(DHT.humidity); // Imprime a humidade no monitor serial
Serial.println("%"); // Imprime o simbolo de porcentagem no monitor serial, ao lado da umidade medida, e pula uma linha

Serial.print(DHT.temperature); // Imprime a temperatua no monitor serial
Serial.println("°C"); // Imprime a simbologia de temperatura (celsius) no monitor serial, ao lado da temperatura medida, e pula uma linha

delay (2000); // Delay de 2 segundos antes de outra medição
}
