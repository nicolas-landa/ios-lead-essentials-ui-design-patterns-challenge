//
//  Copyright © 2019 Essential Developer. All rights reserved.
//

import UIKit

final class WeakRefVirtualProxy<T: AnyObject> {
	private weak var object: T?
	
	init(_ object: T) {
		self.object = object
	}
}

extension WeakRefVirtualProxy: FeedLoadingView where T: FeedLoadingView {
	func display(_ viewModel: FeedLoadingViewModel) {
		object?.display(viewModel)
	}
}

extension WeakRefVirtualProxy: FeedLoadErrorView where T: FeedLoadErrorView {
	func display(_ viewModel: FeedLoadErrorViewModel) {
		object?.display(viewModel)
	}
}

extension WeakRefVirtualProxy: FeedImageView where T: FeedImageView, T.Image == UIImage {
	func display(_ model: FeedImageViewModel<UIImage>) {
		object?.display(model)
	}
}
