import UIKit

@IBDesignable
public class KTextField: UITextField {

    // MARK: - IBInspectable properties

    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER1: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER1
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER2: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER2
            layer.borderColor = borderColor.cgColor
        }
    }
    
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER3: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER3
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER4: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER4
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER5: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER5
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER6: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER6
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER7: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER7
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER8: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER7
            layer.borderColor = borderColor.cgColor
        }
    }
   
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER9: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER7
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER10: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER10
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER11: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER11
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER12: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER12
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER13: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER12
            layer.borderColor = borderColor.cgColor
        }
    }
    
    
    /// Applies border to the text view with the specified width
    @IBInspectable public var borderWidthNEWBORDER14: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthNEWBORDER12
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies a new borderWidth to the text view with the specified width
    @IBInspectable public var newBorderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = newBorderWidth
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /// Applies border to the text view with the specified WIDTH ONLY AND ONLY THIS!!
    @IBInspectable public var borderWidthONLY: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidthONLY
            layer.borderColor = borderColor.cgColor
        }
    }

    /// Sets the color of the border
    @IBInspectable public var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
   
    /// WOWOWOWOW SEE MY NEW DOCUMENTATION of the class
    @IBInspectable public var doc: UIColor = .clear {
        didSet {
            layer.borderColor = doc.cgColor
        }
    }
    

    /// Make the corners rounded with the specified radius
    @IBInspectable public var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

    /// Applies underline to the text view with the specified width
    @IBInspectable public var underLineWidth: CGFloat = 0.0 {
        didSet {
            updateUnderLineFrame()
        }
    }

    /// Sets the underline color
    @IBInspectable public var underLineColor: UIColor = .groupTableViewBackground {
        didSet {
            updateUnderLineUI()
        }
    }

    /// Sets the placeholder color
    @IBInspectable public var placeholderColor: UIColor = .lightGray {
        didSet {
            let placeholderStr = placeholder ?? ""
            attributedPlaceholder = NSAttributedString(string: placeholderStr, attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])
        }
    }

    public override var placeholder: String? {
        didSet {
            let placeholderStr = placeholder ?? ""
            attributedPlaceholder = NSAttributedString(string: placeholderStr, attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])
        }
    }

    /// Sets left margin
    @IBInspectable public var leftMargin: CGFloat = 10.0 {
        didSet {
            setMargins()
        }
    }

    /// Sets right margin
    @IBInspectable public var rightMargin: CGFloat = 10.0 {
        didSet {
            setMargins()
        }
    }

    // MARK: - init methods
    override public init(frame: CGRect) {
        super.init(frame: frame)
        applyStyles()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyStyles()
    }

    // MARK: - Layout
    override public func layoutSubviews() {
        super.layoutSubviews()
        updateUnderLineFrame()
        updateAccessoryViewFrame()
    }

    // MARK: - Styles
    private func applyStyles() {
        applyUnderLine()
        setMargins()
    }

    // MARK: - Underline
    private var underLineLayer = CALayer()
    private func applyUnderLine() {
        // Apply underline only if the text view's has no borders
        if borderStyle == UITextField.BorderStyle.none {
            underLineLayer.removeFromSuperlayer()
            updateUnderLineFrame()
            updateUnderLineUI()
            layer.addSublayer(underLineLayer)
            layer.masksToBounds = true
        }
    }

    private func updateUnderLineFrame() {
        var rect = bounds
        rect.origin.y = bounds.height - underLineWidth
        rect.size.height = underLineWidth
        underLineLayer.frame = rect
    }

    private func updateUnderLineUI() {
        underLineLayer.backgroundColor = underLineColor.cgColor
    }

    // MARK: - Margins
    private var leftAcessoryView = UIView()
    private var rightAcessoryView = UIView()
    private func setMargins() {
        // Left Margin
        leftView = nil
        leftViewMode = .never
        if leftMargin > 0 {
            if nil == leftView {
                leftAcessoryView.backgroundColor = .clear
                leftView = leftAcessoryView
                leftViewMode = .always
            }
        }
        updateAccessoryViewFrame()

        // Right Margin
        rightView = nil
        rightViewMode = .never
        if rightMargin > 0 {
            if nil == rightView {
                rightAcessoryView.backgroundColor = .clear
                rightView = rightAcessoryView
                rightViewMode = .always
            }
            updateAccessoryViewFrame()
        }
    }

    private func updateAccessoryViewFrame() {
        // Left View Frame
        var leftRect = bounds
        leftRect.size.width = leftMargin
        leftAcessoryView.frame = leftRect
        // Right View Frame
        var rightRect = bounds
        rightRect.size.width = rightMargin
        rightAcessoryView.frame = rightRect
    }

}
