import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle

        URLSession.shared.dataTask(with: NSURL(string: partyRock.imageURL)! as URL, completionHandler:
                { (data, response, error) -> Void in

                    if error != nil {
                        print(error!)
                        return
                    }

                    DispatchQueue.main.async(execute: { () -> Void in
                        self.videoPreviewImage.image = UIImage(data: data!)
                    })
                }).resume()
    }
}
