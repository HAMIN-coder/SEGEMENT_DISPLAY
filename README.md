# FPGA SEGEMENT_DISPLAY (with Clock Divider)
이 프로젝트는 FPGA 상에서 7-Segement Display를 제어하기 위한 Verilog 설계 예제이다.
100Hz 입력 클럭을 분주하여 자리 스캔에 활용하고 BCD 카운터와 디코더를 통해 숫자를 표시한다.

## 주요 기능
- Clock Divider (cnt_100M)
  - 100MHz 입력 클럭을 분주하여 10kHz, 1kHz 등의 타이밍 신호 생성
- 3bit counter (cnt3)
  - 8개의 digit(숫자)를 순차적으로 선택
- MUX (mux181)
  - 선택된 자리의 입력 데이터(D0~D7) 중 하나 출력
- Seven Segment Decoder
  - 4bit BCD → 7-Segment 출력 (0~F 표시 가능)
- Digit Decoder
  - 선택된 자리(sel)에 해당하는 AN(애노드) 신호 활성화


## topmodule
<img width="737" height="414" alt="image" src="https://github.com/user-attachments/assets/49db89d8-8b16-4e50-a0c0-4a2f1c3fba3f" />

## seven_segement_8
<img width="892" height="552" alt="image" src="https://github.com/user-attachments/assets/bd3b5fdd-cfb0-48de-969f-a66b03f2287b" />

## cnt_100M
<img width="892" height="552" alt="image" src="https://github.com/user-attachments/assets/73eb52d7-7a66-4b47-b4f1-a350a9319cf3" />
