//
//  UDLModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 06/02/2024.
//

import Foundation

struct UDL: Media, Campaign, ECommerce, Chat, ComponentModel, EventModel, FormModel, Offline, Page, Search, Support, Survey, Tool, Visitor{
    
    var advertisingPlatformId: String?
    var downloadError: String?
    var downloadName: String?
    var downloadType: String?
    var downloadUrl: String?
    var ottPlatformId: String?
    var videoError: String?
    var videoName: String?
    var videoTimePlayed: String?
    var videoTimeTotal: String?
    var videoType: String?
    var videoUrl: String?
    var campaignExternalCode: String?
    var campaignInternalCode: String?
    var cartCurrency: String?
    var cartDateStart: String?
    var cartDateUpdate: String?
    var cartId: String?
    var cartItemId: String?
    var cartItemTotal: String?
    var cartProductBrand: String?
    var cartProductCategory: String?
    var cartProductId: String?
    var cartProductName: String?
    var cartProductPackageName: String?
    var cartProductPrice: String?
    var cartProductQuantity: String?
    var cartProductSku: String?
    var cartProductVariant: String?
    var cartTotalPackages: String?
    var cartTotal: String?
    var transactionTotalPackages: String?
    var productBalanceCredit: String?
    var productBrand: String?
    var productCapacity: String?
    var productCategory: String?
    var productColour: String?
    var productComparisonTerms: String?
    var productConfigurationType: String?
    var productConfigurationValue: String?
    var productDiscountPercentage: String?
    var productDiscountRecurrenceAmount: String?
    var productDiscountValue: String?
    var productId: String?
    var productImageUrl: String?
    var productModel: String?
    var productName: String?
    var productPackageId: String?
    var productPackageName: String?
    var productPaymentTerms: String?
    var productPlanData: String?
    var productPlanDuration: String?
    var productPlanMinutes: String?
    var productPlanSms: String?
    var productPlanSpeed: String?
    var productPriceRecurrenceAmountDefault: String?
    var productPriceRecurrenceAmount: String?
    var productPriceRecurrenceNumber: String?
    var productPriceRecurrenceType: String?
    var productPrice: String?
    var productQuantity: String?
    var productSku: String?
    var productStockAvailable: String?
    var productStockStatus: String?
    var productTargetLifecycleStage: String?
    var productTargetSegment: String?
    var productVariant: String?
    var transactionCouponCode: String?
    var transactionCouponId: String?
    var transactionCurrency: String?
    var transactionDate: String?
    var transactionDiscountPercentage: String?
    var transactionDiscountValue: String?
    var transactionIdExternal: String?
    var transactionId: String?
    var transactionItemTotal: String?
    var transactionMethod: String?
    var transactionPaymentType: String?
    var transactionProductBrand: String?
    var transactionProductCategory: String?
    var transactionProductId: String?
    var transactionProductName: String?
    var transactionProductPrice: String?
    var transactionProductQuantity: String?
    var transactionProductSku: String?
    var transactionShippingType: String?
    var transactionShipping: String?
    var transactionStatus: String?
    var transactionStoreId: String?
    var transactionSubtotal: String?
    var transactionTax: String?
    var transactionTotal: String?
    var transactionType: String?
    var chatAgentId: String?
    var chatConversationId: String?
    var chatError: String?
    var chatName: String?
    var chatTotalTime: String?
    var chatType: String?
    var componentName: String?
    var componentOwner: String?
    var componentType: String?
    var componentVersion: String?
    var eventAction: String?
    var eventCategory: String?
    var eventId: String?
    var eventLabel: String?
    var eventValue: String?
    var formError: String?
    var formName: String?
    var formStepName: String?
    var formStepNumber: String?
    var formType: String?
    var iotPlatformId: String?
    var retailStoreId: String?
    var transactionChannelOffline: String?
    var transactionIdOffline: String?
    var journeyData: Journey?
    var pageBreadcrumb: String?
    var pageCanonicalUrl: String?
    var pageChannel: String?
    var pageCharset: String?
    var pageCount: String?
    var pageCountry: String?
    var pageDomain: String?
    var pageError: String?
    var pageFiltersType: String?
    var pageFiltersValue: String?
    var pageFilters: String?
    var pageJourneyPhase: String?
    var pageLanguage: String?
    var pageLinkSource: String?
    var pageLocale: String?
    var pageName: String?
    var pageNumber: String?
    var pagePathQuery: String?
    var pagePath: String?
    var pagePlatform: String?
    var pageSection: String?
    var pageSorting: String?
    var pageSubdomain: String?
    var pageSubsection: String?
    var pageTitle: String?
    var pageType: String?
    var pageUrl: String?
    var searchCategory: String?
    var searchResults: String?
    var searchTermsAutoSuggested: String?
    var searchTermsTyped: String?
    var searchTerms: String?
    var supportCauseName: String?
    var supportEscalationType: String?
    var surveyId: String?
    var surveyInviteMessage: String?
    var surveyInviteTitle: String?
    var surveyName: String?
    var surveyScore: String?
    var surveyUrl: String?
    var toolError: String?
    var toolInput: String?
    var toolName: String?
    var toolResultsDetails: String?
    var toolResults: String?
    var toolTimestampRunLast: String?
    var toolType: String?
    var visitorAddonBalanceUsageInitialActive: String?
    var visitorAddonBalanceUsageRemainingActive: String?
    var visitorAddonBalanceUsageTypeActive: String?
    var visitorAddonDateEndActive: String?
    var visitorAddonDateStartActive: String?
    var visitorAddonIdActive: String?
    var visitorAddonIdList: String?
    var visitorAddonIdPrimary: String?
    var visitorAddonNameActiveLocale: String?
    var visitorAddonNameActive: String?
    var visitorAddonPackageIdActive: String?
    var visitorAddonPackageIdList: String?
    var visitorAddonPackageIdPrimary: String?
    var visitorAddonRecurrenceTypeActive: String?
    var visitorAddonStatusActive: String?
    var visitorAddonTargetSegmentActive: String?
    var visitorAddonTypeActive: String?
    var visitorAddons: String?
    var visitorAssetBalanceCreditActive: String?
    var visitorAssetBalanceLoyaltyPointsActive: String?
    var visitorAssetBalanceUsageInitialActive: String?
    var visitorAssetBalanceUsageRemainingActive: String?
    var visitorAssetBalanceUsageTypeActive: String?
    var visitorAssetDateEndActive: String?
    var visitorAssetDateStartActive: String?
    var visitorAssetDeviceIdActive: String?
    var visitorAssetDeviceIdList: String?
    var visitorAssetDeviceIdPrimary: String?
    var visitorAssetDeviceNameActive: String?
    var visitorAssetLocaleActive: String?
    var visitorAssetPlanDateEndActive: String?
    var visitorAssetPlanDateStartActive: String?
    var visitorAssetPlanDurationActive: String?
    var visitorAssetPlanIdActive: String?
    var visitorAssetPlanIdList: String?
    var visitorAssetPlanIdPrimary: String?
    var visitorAssetPlanNameActiveLocale: String?
    var visitorAssetPlanNameActive: String?
    var visitorAssetPlanRemainingActive: String?
    var visitorAssetPlanTypeActive: String?
    var visitorAssetStatusActive: String?
    var visitorAssetTypeActive: String?
    var visitorAssetUserAgeActive: String?
    var visitorAssetUserGenderActive: String?
    var visitorAssetUserNameTitleActive: String?
    var visitorAssetValueArpuActive: String?
    var visitorAssetValueMarpuActive: String?
    var visitorAssetValueRevenueActive: String?
    var visitorAssetValueSubsidyActive: String?
    var visitorAssetValueTenureActive: String?
    var visitorBillDateDuePreviousActive: String?
    var visitorBillDateInvoiceCurrentActive: String?
    var visitorBillDateInvoicePreviousActive: String?
    var visitorBillDirectDebitStatusActive: String?
    var visitorBillEbillStatusActive: String?
    var visitorCampaigns: String?
    var visitorCustomerAccountManagerId: String?
    var visitorCustomerBalanceCredit: String?
    var visitorCustomerBalanceLoyaltyPoints: String?
    var visitorCustomerDateEnd: String?
    var visitorCustomerDateStart: String?
    var visitorCustomerGender: String?
    var visitorCustomerLocale: String?
    var visitorCustomerLocationCity: String?
    var visitorCustomerLocationCountry: String?
    var visitorCustomerLocationId: String?
    var visitorCustomerLocationRegion: String?
    var visitorCustomerLocationType: String?
    var visitorCustomerNameTitle: String?
    var visitorCustomerOwner: String?
    var visitorCustomerSegment: String?
    var visitorCustomerStatus: String?
    var visitorCustomerType: String?
    var visitorCustomerValueArpu: String?
    var visitorCustomerValueMarpu: String?
    var visitorCustomerValueRevenue: String?
    var visitorCustomerValueSubsidy: String?
    var visitorCustomerValueTenure: String?
    var visitorIdAccountActive: String?
    var visitorIdAccountList: String?
    var visitorIdAccountPrimary: String?
    var visitorIdAecid: String?
    var visitorIdAnonymous: String?
    var visitorIdAssetActive: String?
    var visitorIdAssetList: String?
    var visitorIdAssetPrimary: String?
    var visitorIdBillActive: String?
    var visitorIdBillList: String?
    var visitorIdBillPrimary: String?
    var visitorIdClickAdvertising: String?
    var visitorIdCms: String?
    // end Visitor
    var visitorIdCompany: String?
    var visitorIdCustomer: String?
    var visitorIdDeviceAdvertising: String?
    var visitorIdDevice: String?
    var visitorIdDigitalProfile: String?
    var visitorIdEmail: String?
    var visitorIdHouse: String?
    var visitorIdInteraction: String?
    var visitorIdLandline: String?
    var visitorIdLead: String?
    var visitorIdMarketingEmail: String?
    var visitorIdMarketingPush: String?
    var visitorIdMarketingSocial: String?
    var visitorIdRewards: String?
    var visitorIdSim: String?
    var visitorIdSubscription: String?
    var visitorIdTms: String?
    var visitorJourneyPhase: String?
    var visitorLoginAuthorisationRole: String?
    var visitorLoginStatus: String?
    var visitorLoginTypeMultiFactor: String?
    var visitorLoginType: String?
    var visitorPermissionAtt: String?
    var visitorPermissionFunctional: String?
    var visitorPermissionPerformance: String?
    var visitorPermissionStrictlyNecessary: String?
    var visitorPermissionTargeting: String?
    var visitorPermissionUpdateDate: String?
    var visitorPreferenceName: String?
    var visitorPreferenceValue: String?
    var visitorPreferences: String?
    var visitorRoamingStatus: String?
    var visitorTools: String?
    var visitorType: String?
}
