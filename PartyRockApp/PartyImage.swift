import UIKit

class PartyImage: UIImageView {
    func loadImage(image: String) {
        URLSession.shared.dataTask(with: NSURL(string: image)! as URL, completionHandler:
                { (data, response, error) -> Void in

                    if error != nil {
                        print(error!)
                        return
                    }

                    DispatchQueue.main.async(execute: { () -> Void in
                        self.image = UIImage(data: data!)
                    })
                }).resume()
    }
}
