//
// DefaultAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import RxSwift


open class DefaultAPI: APIBase {
    /**
     getList
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getList(completion: @escaping ((_ data: DeviceEntities?, _ error: ErrorResponse?) -> Void)) {
        getListWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     getList
     - returns: Observable<DeviceEntities>
     */
    open class func getList() -> Observable<DeviceEntities> {
        return Observable.create { observer -> Disposable in
            getList() { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     getList
     - GET /exec

     - examples: [{contentType=application/json, example=""}]
     - returns: RequestBuilder<DeviceEntities> 
     */
    open class func getListWithRequestBuilder() -> RequestBuilder<DeviceEntities> {
        let path = "/exec"
        let URLString = DeviceKanriSanAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DeviceEntities>.Type = DeviceKanriSanAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     update
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(body: DeviceEntity, completion: @escaping ((_ data: MessageEntity?, _ error: ErrorResponse?) -> Void)) {
        updateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     update
     - parameter body: (body)  
     - returns: Observable<MessageEntity>
     */
    open class func update(body: DeviceEntity) -> Observable<MessageEntity> {
        return Observable.create { observer -> Disposable in
            update(body: body) { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     update
     - POST /exec
     - update

     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]
     - parameter body: (body)  
     - returns: RequestBuilder<MessageEntity> 
     */
    open class func updateWithRequestBuilder(body: DeviceEntity) -> RequestBuilder<MessageEntity> {
        let path = "/exec"
        let URLString = DeviceKanriSanAPIAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<MessageEntity>.Type = DeviceKanriSanAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
