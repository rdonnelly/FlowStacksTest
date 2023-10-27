import SwiftUI
import FlowStacks

/// Base class used for `CoordinatorModel`s.
///
/// Notes
///  Each coordinator is intended to have:
///  - A `Screen` enum, which outlines the screens within its entire flow.
//@MainActor
class CoordinatorModel<Screen>: ObservableObject {
    /// The screens within this coordinator's flow.
    enum Screen {}

    /// Collection of `Screen`s housed within the application's flow.
    @Published var routes: Routes<Screen> = []
}
