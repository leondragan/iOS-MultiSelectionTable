//
//  CellTransitionAnimator.swift
//  MultiSelectionTableView
//
//  Created by Nuno Gonçalves on 09/12/16.
//
//

import UIKit

public protocol CellTransitionAnimator {
    func selectionTransition(in containerView: UIView,
                             fromTableView: UITableView,
                             fromIndexPath: IndexPath,
                             toTableView: UITableView,
                             toIndexPath: IndexPath)
    
    func unselectionTransition(in containerView: UIView,
                               fromTableView: UITableView,
                               fromIndexPath: IndexPath,
                               toTableView: UITableView,
                               toIndexPath: IndexPath)
}
