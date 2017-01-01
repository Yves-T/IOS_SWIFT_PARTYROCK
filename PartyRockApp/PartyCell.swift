import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: PartyImage!
    @IBOutlet weak var videoTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        videoPreviewImage.loadImage(image: partyRock.imageURL)
    }
}
