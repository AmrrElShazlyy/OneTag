//
//  ECommerceModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol ECommerce {
    var cartCurrency: String? { get set }
    var cartDateStart: String? { get set }
    var cartDateUpdate: String? { get set }
    var cartId: String? { get set }
    var cartItemId: String? { get set }
    var cartItemTotal: String? { get set }
    var cartProductBrand: String? { get set }
    var cartProductCategory: String? { get set }
    var cartProductId: String? { get set }
    var cartProductName: String? { get set }
    var cartProductPackageName: String? { get set }
    var cartProductPrice: String? { get set }
    var cartProductQuantity: String? { get set }
    var cartProductSku: String? { get set }
    var cartProductVariant: String? { get set }
    var cartTotalPackages: String? { get set }
    var cartTotal: String? { get set }
    var transactionTotalPackages: String? { get set }
    var productBalanceCredit: String? { get set }
    var productBrand: String? { get set }
    var productCapacity: String? { get set }
    var productCategory: String? { get set }
    var productColour: String? { get set }
    var productComparisonTerms: String? { get set }
    var productConfigurationType: String? { get set }
    var productConfigurationValue: String? { get set }
    var productDiscountPercentage: String? { get set }
    var productDiscountRecurrenceAmount: String? { get set }
    var productDiscountValue: String? { get set }
    var productId: String? { get set }
    var productImageUrl: String? { get set }
    var productModel: String? { get set }
    var productName: String? { get set }
    var productPackageId: String? { get set }
    var productPackageName: String? { get set }
    var productPaymentTerms: String? { get set }
    var productPlanData: String? { get set }
    var productPlanDuration: String? { get set }
    var productPlanMinutes: String? { get set }
    var productPlanSms: String? { get set }
    var productPlanSpeed: String? { get set }
    var productPriceRecurrenceAmountDefault: String? { get set }
    var productPriceRecurrenceAmount: String? { get set }
    var productPriceRecurrenceNumber: String? { get set }
    var productPriceRecurrenceType: String? { get set }
    var productPrice: String? { get set }
    var productQuantity: String? { get set }
    var productSku: String? { get set }
    var productStockAvailable: String? { get set }
    var productStockStatus: String? { get set }
    var productTargetLifecycleStage: String? { get set }
    var productTargetSegment: String? { get set }
    var productVariant: String? { get set }
    var transactionCouponCode: String? { get set }
    var transactionCouponId: String? { get set }
    var transactionCurrency: String? { get set }
    var transactionDate: String? { get set }
    var transactionDiscountPercentage: String? { get set }
    var transactionDiscountValue: String? { get set }
    var transactionIdExternal: String? { get set }
    var transactionId: String? { get set }
    var transactionItemTotal: String? { get set }
    var transactionMethod: String? { get set }
    var transactionPaymentType: String? { get set }
    var transactionProductBrand: String? { get set }
    var transactionProductCategory: String? { get set }
    var transactionProductId: String? { get set }
    var transactionProductName: String? { get set }
    var transactionProductPrice: String? { get set }
    var transactionProductQuantity: String? { get set }
    var transactionProductSku: String? { get set }
    var transactionShippingType: String? { get set }
    var transactionShipping: String? { get set }
    var transactionStatus: String? { get set }
    var transactionStoreId: String? { get set }
    var transactionSubtotal: String? { get set }
    var transactionTax: String? { get set }
    var transactionTotal: String? { get set }
    var transactionType: String? { get set }
}
