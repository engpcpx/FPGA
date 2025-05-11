# FPGA Codes - Exercícios de Eletrônica Embarcada com FPGAs

📚 Pós-Graduação em Eletrônica Embarcada  
🏫 UNISAL - Campinas - SP  
👨‍🏫 Professor: Ricardo Tafas  
📘 Disciplina: EMBARCADA2021-2 - Eletrônica Embarcada com FPGAs (LS.279.004)  
📆 Período: Setembro de 2021  

---

## 🎯 Objetivos dos Exercícios

Esta lista de exercícios tem como objetivo consolidar os conceitos fundamentais de projeto em VHDL e implementação de sistemas digitais em FPGAs, abordando:

### 🔁 Lógica Sequencial e Síncrona
- Projeto e simulação de registradores de deslocamento (shift registers).
- Implementação de contadores (up/down) com carregamento paralelo.
- Uso de sinais de reset, enable e controle de direção.

### ⏱️ Gerenciamento de Clock e Temporização
- Geração de clock estável usando PLLs (Phase-Locked Loops).
- Debouncing de sinais para evitar ruídos em entradas mecânicas (botões).

### 🧠 Memória e Armazenamento
- Implementação de memória RAM com leitura/escrita síncrona.
- Testes de funcionalidade com endereçamento e dados variáveis.

### 🔧 Técnicas de Projeto Reutilizável
- Uso de `generics` em VHDL para criar componentes parametrizáveis.
- Hierarquia de projetos com instanciação de módulos.

### ✅ Boas Práticas e Verificação
- Desenvolvimento de testbenches para validação funcional.
- Análise de sinais com clocking e reset assíncrono/síncrono.

---

## 📁 Estrutura dos Arquivos

### 🔄 Shift Registers
- `shift_register_1.vhd`: Implementação com `loop for`.
- `shift_register_2.vhd`: Implementação com `loop while`.
- Testbenches correspondentes: `*_tb.vhd`.

### 🔢 Contadores
- `counterupdown.vhd`: Contador bidirecional com carregamento paralelo e debounce.
- `counter.vhd`: Contador simples com saída em LEDs.

### 💾 Memória
- `ram.vhd`: Memória RAM com interface de leitura/escrita.
- `ram_tb.vhd`: Testbench para escrita/leitura de dados.

### ⏰ Clock e Debounce
- `example_pll.vhd`: Configuração de PLL para geração de clock.
- `debounce.vhd`: Filtro de ruído para entradas digitais.

### 💡 Sistemas Integrados
- `shiftregister.vhd`: Registrador de deslocamento com saída para LEDs.

---

## 🚀 Como Utilizar

### 🔬 Simulação
Execute os testbenches em ferramentas como **ModelSim** ou **Vivado** para verificar a temporização e funcionalidade. Nos exercícios demonstrados foi usado o Quartus 2 e o Modelsim.

### 🧵 Síntese
Utilize os scripts de síntese para FPGAs da **Intel (Quartus)** ou **Xilinx (Vivado)**
