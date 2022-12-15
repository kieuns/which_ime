
작업 중 메모
 
xcode
* ctl+cmd+up/down : h <-> m 파일 교환


인터페이스와 연결
* 함수든 변수든 인터페이스에서 타입이 인식 되어야 연결 가능
* 버튼 클릭함수는 ```- (IBAction)onClick:(id)sender;``` 같은 형식.

메모리 (최신은 아니라서 갱신 필요)
* 기본 가비지 콜렉터 기능을 사용하는 것 같다.
  * retain, release, autorelease 를 쓰면 에러로 간주하는 듯
* 'Obj-C Garbage Collection' 를 'Unsupported' (어디일까?) 설정하면 가비지 콜렉터를 끈다
아무튼
* 다 사용한 오브젝트에는 ```= nil``` 입력한다.
참조수를 사용한 메모리 관리
* 다 사용하면
  * ```[object release]; object = nil;```
* 참조가 0이 되지 않도록 쓰고 있다는 신호 보내기
  * ```[object retail];``` 
* 객체를 만들고 리턴하는 경우. 받은 쪽도 사용해야 하는 경우.
  * ```[returnObject autorelease];``` 

코드조각

```
[NSString stringWithFormat:@"%@%@", sum, upper];
```


