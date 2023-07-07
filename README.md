# 🎪 만국박람회

## 📖 목차
1. [소개](#-소개)
2. [팀원](#-팀원)
3. [타임라인](#-타임라인)
4. [시각화된 프로젝트 구조](#-시각화된-프로젝트-구조)
5. [실행 화면](#-실행-화면)
6. [트러블 슈팅](#-트러블-슈팅)
7. [참고 링크](#-참고-링크)
8. [팀 회고](#-팀-회고)

</br>

## 🍀 소개
훈, 이디나로크(`hoon`, `idinaloq`) 팀이 만든 만국박람회 가이드 앱입니다. 1900.04.14 ~ 1900.11.12 까지 개최된 파리 만국박람회 중 한국 출품작을 소개합니다. 각각의 테이블 뷰 셀을 클릭하면 자세한 출품작 내용을 확인할 수 있습니다.

* 주요 개념: `UITableView`, `UITableViewCell`, `JSON`, `JSONDecoder`, `Dynamic Type`, `AutoLayout`, `appDelegate`, `sceneDelegate`

</br>

## 👨‍💻 팀원
| idinaloq | hoon |
| :--------: | :--------: |
| <Img src = "https://user-images.githubusercontent.com/109963294/235301015-b81055d2-8618-433c-b680-58b6a38047d9.png" width = "200" height="200"/> |<Img src="https://i.imgur.com/zXoi5OC.jpg" width="200" height="200"> |
|[Github Profile](https://github.com/idinaloq) |[Github Profile](https://github.com/Hoon94) |



</br>

## ⏰ 타임라인
|날짜|내용|
|:--:|--|
|2023.06.26.| - `ExpositionUniverselle`, `Item` 타입 생성 |
|2023.06.27.| - `ExpositionUniverselle`, `Item` 타입 리팩토링 |
|2023.06.28.| - `ExpositionUniverselleViewController UI` 구현 <br> - `JSON` 파일 디코딩 <br> - `touchUpExpositionItemListButton` 메서드 추가 | 
|2023.06.29.| - `ExpositionItemListViewController UI` 구현 <br> - `itemListTableView` 추가 <br> - `ItemUITableViewCellStyleSubtitle` 클래스 생성 <br> - `ExpositionItemViewController UI` 구현 <br> - 리팩토링 |
|2023.06.30.| - 리팩토링 <br> - README 작성 |
|2023.07.01.| - `lazy var`로 선언된 프로퍼티 수정 <br> - `ExpositionUniverselle` 타입 연산 프로퍼티 추가 <br> - `viewDidLoad` 수정 <br> - 매직리터럴 수정, `JSONFile` 타입 추가 |
|2023.07.03.| - `configureCell` 메서드를 사용하여 `cell`에 접근하도록 수정 <br> - `itemImage` 클로저 제거, `expositionItem` 상수로 변경 <br> - `addArrangedSubviews` 매개변수인 `subviews` 타입 수정 <br> - `JSONFile` 타입이 `CustomStringConvertible` 채택하도록 수정 |
|2023.07.04.| - `viewDidLoad` 추상화 수준 수정 <br> - `AlertController` 추가 |
|2023.07.05.| - `applicaion(_:supportedInterfaceOrientationsFor:)` 메서드 추가 <br> - `ExpositionUniverselleViewController` 오토레이아웃 제약 추가 <br> - `configureItemImageConstraint` 메서드 추가 <br> - 기존의 셀을 커스텀셀로 변경 <br> - 오토레이아웃 제약조건 수정|
|2023.07.06.| - `String+Extension` 추가 <br> - `dynamic type` 적용되도록 레이블 수정 <br> - `addTarget`을 `addAction`으로 수정 <br> |
|2023.07.07.| - `cell imageView constraints` 수정 <br> - `itemImage`의 `contentCompressionResistance priority` 변경 <br> - `changeOrientation` 네이밍 수정 및 가독성 개선 <br> - `configureCell` 메서드 수정 <br> - README 작성 |

</br>

## 👀 시각화된 프로젝트 구조

### ℹ️ File Tree

    ┌── Expo1900
    │   └── Expo1900
    │       ├── Model
    │       │   ├── ExpositionUniverselle
    │       │   ├── Item
    │       │   └── JSONFile
    │       ├── View
    │       │   ├── LaunchScreen
    │       │   └── ExpositionItemCell
    │       ├── Controller
    │       │   ├── AppDelegate
    │       │   ├── SceneDelegate
    │       │   ├── ExpositionUniverselleViewController
    │       │   ├── ExpositionItemListViewController
    │       │   ├── ExpositionItemViewController
    │       │   └── AlertController
    │       ├── Extension
    │       │   ├── JSONDecoder+Extension
    │       │   └── String+Extension
    │       ├── Error
    │       │   └── NSDataAssetError
    │       ├── Assets
    │       └── Info
    │
    ├── 팀회고.md
    └── README.md


### 📐 Class Diagram
<p align="center">
<img width="1000" src="https://hackmd.io/_uploads/r1CkYErY3.jpg">
</p>


</br>

## 💻 실행 화면 

|  실행 화면(세로)  | 디코딩 오류 | 폰트 크기 변경 |
|:-------------:|:--------:| :--------: |
|<Img src="https://github.com/Hoon94/SwiftAlgorithm/assets/43189761/b9701fea-486c-405c-b15e-8531946e3777" width="250">|<Img src="https://github.com/Hoon94/SwiftAlgorithm/assets/43189761/24187f3c-0085-42f6-be1c-9a6c750605c7" width="250">|<Img src="https://github.com/Hoon94/SwiftAlgorithm/assets/43189761/3df7f44a-1bfb-41b1-b616-fad2d825ca7f" width="250">|

|  실행 화면(가로)  |
|:-------------:|
|<Img src="https://github.com/Hoon94/SwiftAlgorithm/assets/43189761/a7630713-0a66-4555-8bbc-cd8059b4c388" height="250">|

</br>

## 🧨 트러블 슈팅

1️⃣ **JSON 포멧의 데이터와 매칭할 모델 타입** <br>
-
🔒 **문제점** <br>
`exposition_universelle_1900.json`과 `items.json`에서 사용하는 `JSON` 포맷의 데이터는 네이밍을 snake case 형태로 사용하였습니다. Swift에서 사용하는 camel case 형태와 달랐고, 축약어를 사용하는 네이밍도 있었습니다. `JSONDecoder`를 사용하여 디코딩을 하면 JSON 파일에 저장된 네이밍을 저희가 생성한 타입의 프로퍼티의 네이밍과 일치시켜야 했지만, Swift에서 사용하는 [네이밍 가이드라인](https://www.swift.org/documentation/api-design-guidelines/#naming)에서 타입과 프로토콜은 **UpperCamelCase**로, 나머지는 **lowerCamelCase**로 작성해야 된다는 가이드라인과 다르다는 문제가 있었습니다.

🔑 **해결방법** <br>
`CodingKeys`를 사용하여 `JSON` 파일에 저장된 네이밍을 다음과 같이 각각의 프로퍼티의 케이스에 맞게 지정하였습니다.
```swift
struct Item: Decodable {
    let name: String
    let imageName: String
    let shortDescription: String
    let totalDescription: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageName = "image_name"
        case shortDescription = "short_desc"
        case totalDescription = "desc"
    }
}
```

<br>

2️⃣ **코드베이스로 `UI` 구현하기** <br>
-
🔒 **문제점** <br>
지금까지의 프로젝트는 스토리보드를 이용해서 `UI`를 구현했습니다. 지금의 소규모 프로젝트는 괜찮지만, 만약 프로젝트가 복잡해진다면 협업을 할 때 스토리보드에서의 충돌이 있을 가능성이 있기 때문에 코드베이스로 `UI`를 구현하기로 했지만, `View`를 추가해도 시뮬레이터에 아무것도 표시되지 않는 문제가 있었습니다.

🔑 **해결방법** <br>
해당 문제는 각각의 뷰에 제약조건을 설정하지 않았던 문제로, 스토리보드 상에서 `UI`를 추가할 때 기본적으로 상수 값인 `constant`로 지정되어서 `UI`가 보이지만, 코드베이스로 `UI`를 구현할 때는 기본적으로 아무 값도 없기 때문에 `UI`가 표시되지 않았던 문제였습니다. `topAnchor`, `leadingAnchor`, `trailingAnchor`, `bottomAnchor`, `heightAnchor`, `widthAnchor`등의 제약조건을 사용해서 화면의 어느 위치에 뷰를 띄울지에 대한 오토레이아웃 제약조건을 설정했습니다.

<br>

3️⃣ **뷰 업데이트** <br>
-
🔒 **문제점** <br>
뷰 컨트롤러에서 연산 프로퍼티를 사용하여 뷰를 생성할 때 `UILabel`의 경우 입력되어야 하는 내용들을 함께 입력하여 생성하였습니다.

```swift
private var expositionUniverselle: ExpositionUniverselle?

private lazy var titleLabel: UILabel = {
    let label: UILabel = UILabel()
    label.text = = expositionUniverselle?.title
    label.textAlignment = .center
    
    return label
}()
```

위와 같이 사용하면 `expositionUniverselle`이 초기화 전에 값에 접근하여 `title` 값을 받아오려고 하기 때문에 `lazy var`를 사용해야 했습니다.

🔑 **해결방법** <br>
뷰를 생성하고 이후에 `updateLabel()` 메서드에서 `label.text`에 값을 할당하는 작업들을 모아서 진행하도록 하였습니다.

```swift
private var expositionUniverselle: ExpositionUniverselle?

private let titleLabel: UILabel = {
    let label: UILabel = UILabel()
    label.textAlignment = .center
    
    return label
}()

...

private func updateLabel() {
    navigationItem.title = "메인"
    titleLabel.text = expositionUniverselle?.titleForLabel
    visitorsLabel.text = expositionUniverselle?.visitorsForLabel
    locationLabel.text = expositionUniverselle?.locationForLabel
    durationLabel.text = expositionUniverselle?.durationForLabel
    totalDescriptionLabel.text = expositionUniverselle?.totalDescription
}
```

<br>

4️⃣ **매직리터널 최소화** <br>
-
🔒 **문제점** <br>
`exposition_universelle_1900`, `items`같은 `JSON` 파일에서 직접적으로 파일을 읽어올 때 아래와 같이 파일 이름을 직접 지정하여 읽어오도록 하였습니다.

```swift
private func decodeExpositionUniverselle() {
    do {
        expositionUniverselle = try JSONDecoder().decode(ExpositionUniverselle.self, from: "exposition_universelle_1900")
    } catch {
        print(error)
    }
}
```

추후 파일의 이름이나 파일 자체가 바뀌는 경우 파일 이름을 계속 변경해야 되는데, 만약 뷰 컨트롤러가 커지거나 파일이 많아지는 경우 일일이 파일명을 입력하는 코드를 찾아 변경하기 어려울 것 같다고 생각했습니다.

🔑 **해결방법** <br>
이를 해결하기 위해 `JSONFile.swift` 파일을 만들고 파일 이름을 관리할 수 있도록 했습니다.

```swift
enum JSONFile: CustomStringConvertible {
    case exposition
    case items
    
    var description: String {
        switch self {
        case .exposition:
            return "exposition_universelle_1900"
        case .items:
            return "items"
        }
    }
}
```

이렇게 하나의 파일에서 `JSON` 파일을 관리하기 때문에 파일의 수정이 필요한 경우 파일명을 입력하는 코드를 찾아갈 필요 없이 `JSONFile.swift` 파일에서 모두 해결할 수 있었습니다. 위의 `JSONFile` 타입을 적용하여 아래와 같이 코드를 수정하였습니다.

```swift
private func decodeExpositionUniverselle() {
    do {
        expositionUniverselle = try JSONDecoder().decode(ExpositionUniverselle.self, from: JSONFile.exposition.name)
    } catch {
        print(error)
    }
}
```

<br>

5️⃣ **다음 뷰 컨트롤러에 데이터 전달** <br> 
-
🔒 **문제점** <br>
두 번째 뷰 컨트롤인 `ExpositionItemViewController`에서 `JSON` 데이터를 사용할 때 `decodeItems()` 메서드를 통해 디코딩 된 데이터를 `itemList`에 할당합니다. 세 번째 뷰 컨트롤인 `ExpositionItemListViewController`에서도 위와 같이 디코딩을 하면 같은 결과가 나오지만, 동일한 파일을 두 번 디코딩 하는 중복된 동작을 수행합니다.

🔑 **해결방법** <br>
두 번째 뷰 컨트롤에서 다음 뷰 컨트롤러에 데이터를 넘겨주어 동일한 작업을 여러 번 반복하지 않도록 하였습니다. 특히 세 번째 화면은 각 아이템에 대한 상세 정보를 보여주는 화면입니다. 세 번째 화면에서 전체 아이템 목록을 디코딩 하여 사용하기보다는 개별 아이템에 대한 데이터만을 이전 화면에서 전달받아 사용하도록 아래와 같이 구현했습니다.

```swift
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    let expositionItemViewController: ExpositionItemViewController = ExpositionItemViewController(item: itemList[indexPath.row])
    navigationController?.pushViewController(expositionItemViewController, animated: true)
}
```

<br>

6️⃣ **`JSONDecoder Extension`** <br>
-
🔒 **문제점** <br>
같은 `decode()` 메서드를 현재 두 번 사용하고 있습니다. `do - try - catch` 과정에서 `NSDataAsset`을 옵셔널 바인딩을 해서 사용하고 있었습니다. `decode()` 메서드를 사용하는 횟수가 늘어난다면, `NSDataAsset`에 대한 옵셔널 바인딩 코드가 중복되었습니다.

🔑 **해결방법** <br>
`Extension`으로 `decode`의 기능을 다음과 같이 확장하여 사용했습니다.
```swift
extension JSONDecoder {
    func decode<T: Decodable>(_ type: T.Type, from assetName: String) throws -> T {
        guard let json = NSDataAsset(name: assetName) else {
            throw NSDataAssetError.invalidDataAsset
        }

        return try JSONDecoder().decode(type, from: json.data)
    }
}
```

<br>

7️⃣ **사용자에게 에러 알리기** <br>
-
🔒 **문제점** <br>
기존 코드에서 에러가 발생하는 경우 `print(error)`와 같이 터미널에 알리도록 구현을 했습니다. 만약 앱에서 에러가 발생했을 때 사용자들은 에러 발생 상황을 인지하지 못하는 문제가 있었습니다.

```swift
 do {
    itemList = try JSONDecoder().decode([Item].self, from: JSONFile.items.description)
    } catch NSDataAssetError.invalidDataAsset {
        ...
    } catch {
        print(error)
 }
```

🔑 **해결방법** <br>
앱을 사용하는 사용자들에게 에러 발생과 같은 크리티컬한 상황을 알리고 싶을 때, [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller)를 사용해서 사용자에게 [Alerts](https://developer.apple.com/design/human-interface-guidelines/alerts)을 표시하는 방법이 에러 발생 상황을 알리는 가장 좋은 방법이라고 생각했고, 일반적으로도 이러한 방법을 사용하고 있기 때문에 얼럿으로 에러 발생을 알리도록 추가했습니다.

```swift
do {
    itemList = try JSONDecoder().decode([Item].self, from: JSONFile.items.description)
} catch NSDataAssetError.invalidDataAsset {
    let alert: UIAlertController = AlertController().configureAlert(errorName: NSDataAssetError.invalidDataAsset.localizedDescription)
    present(alert, animated: true)
} catch {
    ...
}
```

<br>

8️⃣ **`NavigationCotroller` 사용** <br>
-
🔒 **문제점** <br>
화면 간의 전환에서 `navigation` 방식을 사용하여 `push`를 하여 다음 화면으로 넘어가도록 구성하였습니다. 코드베이스로 `UI`를 작성하면서 `NavigationController`를 초기화를 코드로 직접 해주어야 했습니다.

🔑 **해결방법** <br>
`SceneDelegate.swift` 파일에서 아래의 코드를 입력하였습니다

```swift
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    //UIWindowScene은 scene을 관리하고, UIScene은 앱에서 사용자 인터페이스를 표시하는 역할
    //UIScene을 상속받은 UIWindowScene으로 Scene을 관리하기 위해 다운 캐스팅을 사용
    guard let windowScene = (scene as? UIWindowScene) else { return }

    // SceneDelegate의 프로퍼티에 할당
    // windowScene이 관리할 window 생성
    window = UIWindow(windowScene: windowScene)

    // 맨 처음 보여줄 ViewController 할당
    let mainViewController: ExpositionUniverselleViewController = ExpositionUniverselleViewController()

    // mainViewController를 사용하여 UINavigationController 초기화
    // 네비게이션의 첫 화면을 mainViewController로 지정
    let navigationController: UINavigationController = UINavigationController(rootViewController : mainViewController)

    // 화면의 첫 시작 지점을 할당
    window?.rootViewController = navigationController

    // window를 화면에 표시하고 key window로 사용
    window?.makeKeyAndVisible()
}
```

위에서 `UINavigationController`의 `init`을 통해 네비게이션의 첫 화면을 지정하였습니다.

<br>

9️⃣ **화면의 회전 고정** <br>
-
🔒 **문제점** <br>
첫 화면에서는 `portrait mode`만 지원하고 싶었습니다. 이 외의 화면에는 모든 회전에 대해 지원하고 싶었습니다. 전체 앱의 동작에 대한 화면은 프로젝트의 `Deployment Info`에서 설정할 수 있었습니다. 하지만 각각의 화면에 따라 회전에 대한 제한을 걸기는 힘들었습니다. 

🔑 **해결방법** <br>
첫 번째 화면은 세로로 고정되어야 했고, 알아보던 중 `appDelegate`를 이용한 방법을 사용하게 되었습니다. `appDelegate`는 앱의 라이프 사이클과 이벤트를 처리하는 객체로써 앱의 시작, 종료 및 상태변화 등과 관련된 작업을 수행합니다. `AppDelegate.swift`에 다음 코드를 작성하였습니다.

```swift
// AppDelegate.swift
var isOnlyPortrait: Bool = true

func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
    if isOnlyPortrait {
        return [.portrait]
    } else {
        return [.all]
    }
}

// ExpositionUniverselleViewController.swift
override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    delegate?.isOnlyPortrait = true
}

override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    delegate?.isOnlyPortrait = false
}
```

만약 `isOnlyPortrait`가 `true`일 때 인터페이스 방향을 나타내는`UIInterfaceOrientationMask`가 세로 방향만을 허용하도록 `[.portrait]`을 반환하고, false인 경우 모든 방향을 허용하도록 `[.all]`을 반환하도록 하였습니다. `isOnlyPortrait`를 화면 고정을 원하는 첫 번째 뷰에서 뷰가 나타날 때 viewWillAppear에서 true로 설정해서 세로로 고정되게 하고, 다른 뷰로 넘어갈 때 viewWillDisappear에서 false로 설정해서 화면이 모든 방향을 허용하도록 하였습니다.

<br>

🔟 **`Dynamic Type`** <br>
-
🔒 **문제점** <br>
1. `Dynamic Type`은 사용자가 원하는 텍스트 사이즈로 컨텐츠를 볼 수 있는 유연성을 제공하는 기능입니다. 이 기능을 사용하여 텍스트의 크기를 키우게 되면 `...`으로 표시되는 문제가 있었고, 이로 인해 사용자가 텍스트의 크기를 크게 했을 때 내용을 알 수 없는 문제가 있었습니다.

2. `Dynamic Type`을 사용하여 텍스트의 크기를 키울 때, 버튼의 텍스트는 커지지만 버튼 자체의 크기와 버튼이 담긴 스택뷰의 크기가 커지지 않는 문제가 있었습니다.

🔑 **해결방법** <br>
1. `UILabel`의 `numberOfLines`는 `UILabel`에서 텍스트를 표시할 줄의 최대 개수를 지정하는 데 사용이 되고, 아무것도 지정하지 않으면 기본값이 `1`로 지정되는 것을 알게 되었습니다. 이 값이 `1`일 때 텍스트가 한 줄에만 표시되기 때문에 `numberOfLines = 0`으로 설정을 해서 만약 넓이가 초과하는 경우 줄바꿈이 되도록 변경했습니다.

2. `이미지 - 버튼 - 이미지`의 형태로 하나의 스택뷰에 묶여있었고, 이미지의 제약조건이 버튼을 참조하도록 했습니다. 이런 경우 이미지의 우선순위가 높아져 버튼 크기가 변경되지 않은 문제였습니다. 이미지의 제약조건에 문제가 있었기 때문에 이를 제거하고, `setContentCompressionResistancePriority(_:for:)`메서드를 사용해서 이미지뷰의 `CompressionResistance Priority`를 조절했습니다.

    ```swift
    private let rightItemImage: UIImageView = {
        let imageName: String = "flag"
        let image: UIImage? = UIImage(named: imageName)
        let imageView: UIImageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.setContentCompressionResistancePriority(.fittingSizeLevel, for: .vertical)

        return imageView
    }()

    private let leftItemImage: UIImageView = {
        let imageName: String = "flag"
        let image: UIImage? = UIImage(named: imageName)
        let imageView: UIImageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.setContentCompressionResistancePriority(.fittingSizeLevel, for: .vertical)

        return imageView
    }()
    ```
    
    `setContentCompressionResistancePriority(_:for:)` 메서드는 뷰가 적합한 크기를 유지하기 위해 우선순위를 설정하는 메서드로, 첫 번째 매개변수는 뷰가 적합한 크기를 유지하기 위한 우선순위를 나타내고 전달인자를 기본 값 보다 낮은 `.fittingSizeLevel`으로 설정해서 이미지뷰의 크기에 스택뷰의 우선순위가 낮아지지 않도록 했습니다.

    두 번째 매개변수는 수평 방향, 수직 방향 등 크기 조정에 대해 우선순위를 설정하는 것으로, 첫 번째 페이지는 수직으로만 표현되면 되기 때문에 전달인자를`.vertical`로 설정해서 뷰가 수직 방향으로 압축되는 경우 내용이 잘리지 않도록 했습니다.
<br>

</br>

## 📚 참고 링크
- [🍎Apple Docs: JSONDecoder](https://developer.apple.com/documentation/foundation/jsondecoder)
- [🍎Apple Docs: UITableView](https://developer.apple.com/documentation/uikit/uitableview)
- [🍎Apple Docs: Filling a table with data](https://developer.apple.com/documentation/uikit/views_and_controls/table_views/filling_a_table_with_data)
- [🍎Apple Docs: Encoding and Decoding Custom Types](https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types)
- [🍎Apple Docs: Typography - Dynamic Type](https://developer.apple.com/design/human-interface-guidelines/typography#iOS-iPadOS-Dynamic-Type-sizes)
- [🍎Apple Docs: loadView()](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621454-loadview)
- [📘stackOverflow: NSAttributedString](https://stackoverflow.com/questions/43723345/nsattributedstring-change-the-font-overall-but-keep-all-other-attributes)
- [📘blog: NavigationController를 rootViewController로 지정하기](https://vanillacreamdonut.tistory.com/277)
- [📘blog: Hugging, Compression Resistance Priority](https://ios-development.tistory.com/673)
- [📘blog: 추상화 수준](https://velog.io/@mincho920/%ED%81%B4%EB%A6%B0%EC%BD%94%EB%93%9C-%ED%95%A8%EC%88%98%EC%9D%98-%EC%B6%94%EC%83%81%ED%99%94-%EC%88%98%EC%A4%80-%EA%B7%B8%EB%A6%AC%EA%B3%A0-Switch-%EB%AC%B8)

</br>

## 👥 팀 회고
- [팀 회고 링크](https://github.com/idinaloq/ios-exposition-universelle/wiki/%ED%8C%80-%ED%9A%8C%EA%B3%A0)
