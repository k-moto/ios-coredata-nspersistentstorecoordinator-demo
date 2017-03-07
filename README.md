# NSPersistentStoreCoordinator

## 概要
NSPersistentStoreCoordinatorは複数の永続ストアを管理します。


## 関連クラス
NSObject, NSLocking

## 主要プロパティ
|プロパティ名|説明|サンプル|
|---|---|---|
|persistentStores | 管理されている永続ストアを全て取得する | NSPersistentStoreCoordinator.persistentStores|


## 主要メソッド
|メソッド名|説明|サンプル|
|---|---|---|
|addPersistentStore | 参照するオブジェクトの最大値を取得する | NSPersistentStoreCoordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: URL, options: nil) |
|persistentStore | 管理されている永続ストアをURLから取得する | NSPersistentStoreCoordinator.persistentStore(for: storeURL!) |
|remove | 永続ストアを除去する | NSPersistentStoreCoordinator.remove(NSPersistentStore) |


## フレームワーク
CoreData.framework

## サポートOSバージョン
iOS3.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/coredata/nspersistentstorecoordinator
