//
//  UDLModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 06/02/2024.
//

import Foundation

struct UDL: Media, Campaign, ECommerce, Chat, ComponentModel, EventModel, FormModel, Offline, Page, Search, Support, Survey, Tool, Visitor, Codable {
    
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
    
    enum CodingKeys: String, CodingKey {
        case advertisingPlatformId = "advertising_platform_id"
        case downloadError = "download_error"
        case downloadName = "download_name"
        case downloadType = "download_type"
        case downloadUrl = "download_url"
        case ottPlatformId = "ott_platform_id"
        case videoError = "video_error"
        case videoName = "video_name"
        case videoTimePlayed = "video_time_played"
        case videoTimeTotal = "video_time_total"
        case videoType = "video_type"
        case videoUrl = "video_url"
        case campaignExternalCode = "campaign_external_code"
        case campaignInternalCode = "campaign_internal_code"
        case cartCurrency = "cart_currency"
        case cartDateStart = "cart_date_start"
        case cartDateUpdate = "cart_date_update"
        case cartId = "cart_id"
        case cartItemId = "cart_item_id"
        case cartItemTotal = "cart_item_total"
        case cartProductBrand = "cart_product_brand"
        case cartProductCategory = "cart_product_category"
        case cartProductId = "cart_product_id"
        case cartProductName = "cart_product_name"
        case cartProductPackageName = "cart_product_package_name"
        case cartProductPrice = "cart_product_price"
        case cartProductQuantity = "cart_product_quantity"
        case cartProductSku = "cart_product_sku"
        case cartProductVariant = "cart_product_variant"
        case cartTotalPackages = "cart_total_packages"
        case cartTotal = "cart_total"
        case transactionTotalPackages = "transaction_total_packages"
        case productBalanceCredit = "product_balance_credit"
        case productBrand = "product_brand"
        case productCapacity = "product_capacity"
        case productCategory = "product_category"
        case productColour = "product_colour"
        case productComparisonTerms = "product_comparison_terms"
        case productConfigurationType = "product_configuration_type"
        case productConfigurationValue = "product_configuration_value"
        case productDiscountPercentage = "product_discount_percentage"
        case productDiscountRecurrenceAmount = "product_discount_recurrence_amount"
        case productDiscountValue = "product_discount_value"
        case productId = "product_id"
        case productImageUrl = "product_image_url"
        case productModel = "product_model"
        case productName = "product_name"
        case productPackageId = "product_package_id"
        case productPackageName = "product_package_name"
        case productPaymentTerms = "product_payment_terms"
        case productPlanData = "product_plan_data"
        case productPlanDuration = "product_plan_duration"
        case productPlanMinutes = "product_plan_minutes"
        case productPlanSms = "product_plan_sms"
        case productPlanSpeed = "product_plan_speed"
        case productPriceRecurrenceAmountDefault = "product_price_recurrence_amount_default"
        case productPriceRecurrenceAmount = "product_price_recurrence_amount"
        case productPriceRecurrenceNumber = "product_price_recurrence_number"
        case productPriceRecurrenceType = "product_price_recurrence_type"
        case productPrice = "product_price"
        case productQuantity = "product_quantity"
        case productSku = "product_sku"
        case productStockAvailable = "product_stock_available"
        case productStockStatus = "product_stock_status"
        case productTargetLifecycleStage = "product_target_lifecycle_stage"
        case productTargetSegment = "product_target_segment"
        case productVariant = "product_variant"
        case transactionCouponCode = "transaction_coupon_code"
        case transactionCouponId = "transaction_coupon_id"
        case transactionCurrency = "transaction_currency"
        case transactionDate = "transaction_date"
        case transactionDiscountPercentage = "transaction_discount_percentage"
        case transactionDiscountValue = "transaction_discount_value"
        case transactionIdExternal = "transaction_id_external"
        case transactionId = "transaction_id"
        case transactionItemTotal = "transaction_item_total"
        case transactionMethod = "transaction_method"
        case transactionPaymentType = "transaction_payment_type"
        case transactionProductBrand = "transaction_product_brand"
        case transactionProductCategory = "transaction_product_category"
        case transactionProductId = "transaction_product_id"
        case transactionProductName = "transaction_product_name"
        case transactionProductPrice = "transaction_product_price"
        case transactionProductQuantity = "transaction_product_quantity"
        case transactionProductSku = "transaction_product_sku"
        case transactionShippingType = "transaction_shipping_type"
        case transactionShipping = "transaction_shipping"
        case transactionStatus = "transaction_status"
        case transactionStoreId = "transaction_store_id"
        case transactionSubtotal = "transaction_subtotal"
        case transactionTax = "transaction_tax"
        case transactionTotal = "transaction_total"
        case transactionType = "transaction_type"
        case chatAgentId = "chat_agent_id"
        case chatConversationId = "chat_conversation_id"
        case chatError = "chat_error"
        case chatName = "chat_name"
        case chatTotalTime = "chat_total_time"
        case chatType = "chat_type"
        case componentName = "component_name"
        case componentOwner = "component_owner"
        case componentType = "component_type"
        case componentVersion = "component_version"
        case eventAction = "event_action"
        case eventCategory = "event_category"
        case eventId = "event_id"
        case eventLabel = "event_label"
        case eventValue = "event_value"
        case formError = "form_error"
        case formName = "form_name"
        case formStepName = "form_step_name"
        case formStepNumber = "form_step_number"
        case formType = "form_type"
        case iotPlatformId = "iot_platform_id"
        case retailStoreId = "retail_store_id"
        case transactionChannelOffline = "transaction_channel_offline"
        case transactionIdOffline = "transaction_id_offline"
        case journeyData = "journey_data"
        case pageBreadcrumb = "page_breadcrumb"
        case pageCanonicalUrl = "page_canonical_url"
        case pageChannel = "page_channel"
        case pageCharset = "page_charset"
        case pageCount = "page_count"
        case pageCountry = "page_country"
        case pageDomain = "page_domain"
        case pageError = "page_error"
        case pageFiltersType = "page_filters_type"
        case pageFiltersValue = "page_filters_value"
        case pageFilters = "page_filters"
        case pageJourneyPhase = "page_journey_phase"
        case pageLanguage = "page_language"
        case pageLinkSource = "page_link_source"
        case pageLocale = "page_locale"
        case pageName = "page_name"
        case pageNumber = "page_number"
        case pagePathQuery = "page_path_query"
        case pagePath = "page_path"
        case pagePlatform = "page_platform"
        case pageSection = "page_section"
        case pageSorting = "page_sorting"
        case pageSubdomain = "page_subdomain"
        case pageSubsection = "page_subsection"
        case pageTitle = "page_title"
        case pageType = "page_type"
        case pageUrl = "page_url"
        case searchCategory = "search_category"
        case searchResults = "search_results"
        case searchTermsAutoSuggested = "search_terms_auto_suggested"
        case searchTermsTyped = "search_terms_typed"
        case searchTerms = "search_terms"
        case supportCauseName = "support_cause_name"
        case supportEscalationType = "support_escalation_type"
        case surveyId = "survey_id"
        case surveyInviteMessage = "survey_invite_message"
        case surveyInviteTitle = "survey_invite_title"
        case surveyName = "survey_name"
        case surveyScore = "survey_score"
        case surveyUrl = "survey_url"
        case toolError = "tool_error"
        case toolInput = "tool_input"
        case toolName = "tool_name"
        case toolResultsDetails = "tool_results_details"
        case toolResults = "tool_results"
        case toolTimestampRunLast = "tool_timestamp_run_last"
        case toolType = "tool_type"
        case visitorAddonBalanceUsageInitialActive = "visitor_addon_balance_usage_initial_active"
        case visitorAddonBalanceUsageRemainingActive = "visitor_addon_balance_usage_remaining_active"
        case visitorAddonBalanceUsageTypeActive = "visitor_addon_balance_usage_type_active"
        case visitorAddonDateEndActive = "visitor_addon_date_end_active"
        case visitorAddonDateStartActive = "visitor_addon_date_start_active"
        case visitorAddonIdActive = "visitor_addon_id_active"
        case visitorAddonIdList = "visitor_addon_id_list"
        case visitorAddonIdPrimary = "visitor_addon_id_primary"
        case visitorAddonNameActiveLocale = "visitor_addon_name_active_locale"
        case visitorAddonNameActive = "visitor_addon_name_active"
        case visitorAddonPackageIdActive = "visitor_addon_package_id_active"
        case visitorAddonPackageIdList = "visitor_addon_package_id_list"
        case visitorAddonPackageIdPrimary = "visitor_addon_package_id_primary"
        case visitorAddonRecurrenceTypeActive = "visitor_addon_recurrence_type_active"
        case visitorAddonStatusActive = "visitor_addon_status_active"
        case visitorAddonTargetSegmentActive = "visitor_addon_target_segment_active"
        case visitorAddonTypeActive = "visitor_addon_type_active"
        case visitorAddons = "visitor_addons"
        case visitorAssetBalanceCreditActive = "visitor_asset_balance_credit_active"
        case visitorAssetBalanceLoyaltyPointsActive = "visitor_asset_balance_loyalty_points_active"
        case visitorAssetBalanceUsageInitialActive = "visitor_asset_balance_usage_initial_active"
        case visitorAssetBalanceUsageRemainingActive = "visitor_asset_balance_usage_remaining_active"
        case visitorAssetBalanceUsageTypeActive = "visitor_asset_balance_usage_type_active"
        case visitorAssetDateEndActive = "visitor_asset_date_end_active"
        case visitorAssetDateStartActive = "visitor_asset_date_start_active"
        case visitorAssetDeviceIdActive = "visitor_asset_device_id_active"
        case visitorAssetDeviceIdList = "visitor_asset_device_id_list"
        case visitorAssetDeviceIdPrimary = "visitor_asset_device_id_primary"
        case visitorAssetDeviceNameActive = "visitor_asset_device_name_active"
        case visitorAssetLocaleActive = "visitor_asset_locale_active"
        case visitorAssetPlanDateEndActive = "visitor_asset_plan_date_end_active"
        case visitorAssetPlanDateStartActive = "visitor_asset_plan_date_start_active"
        case visitorAssetPlanDurationActive = "visitor_asset_plan_duration_active"
        case visitorAssetPlanIdActive = "visitor_asset_plan_id_active"
        case visitorAssetPlanIdList = "visitor_asset_plan_id_list"
        case visitorAssetPlanIdPrimary = "visitor_asset_plan_id_primary"
        case visitorAssetPlanNameActiveLocale = "visitor_asset_plan_name_active_locale"
        case visitorAssetPlanNameActive = "visitor_asset_plan_name_active"
        case visitorAssetPlanRemainingActive = "visitor_asset_plan_remaining_active"
        case visitorAssetPlanTypeActive = "visitor_asset_plan_type_active"
        case visitorAssetStatusActive = "visitor_asset_status_active"
        case visitorAssetTypeActive = "visitor_asset_type_active"
        case visitorAssetUserAgeActive = "visitor_asset_user_age_active"
        case visitorAssetUserGenderActive = "visitor_asset_user_gender_active"
        case visitorAssetUserNameTitleActive = "visitor_asset_user_name_title_active"
        case visitorAssetValueArpuActive = "visitor_asset_value_arpu_active"
        case visitorAssetValueMarpuActive = "visitor_asset_value_marpu_active"
        case visitorAssetValueRevenueActive = "visitor_asset_value_revenue_active"
        case visitorAssetValueSubsidyActive = "visitor_asset_value_subsidy_active"
        case visitorAssetValueTenureActive = "visitor_asset_value_tenure_active"
        case visitorBillDateDuePreviousActive = "visitor_bill_date_due_previous_active"
        case visitorBillDateInvoiceCurrentActive = "visitor_bill_date_invoice_current_active"
        case visitorBillDateInvoicePreviousActive = "visitor_bill_date_invoice_previous_active"
        case visitorBillDirectDebitStatusActive = "visitor_bill_direct_debit_status_active"
        case visitorBillEbillStatusActive = "visitor_bill_ebill_status_active"
        case visitorCampaigns = "visitor_campaigns"
        case visitorCustomerAccountManagerId = "visitor_customer_account_manager_id"
        case visitorCustomerBalanceCredit = "visitor_customer_balance_credit"
        case visitorCustomerBalanceLoyaltyPoints = "visitor_customer_balance_loyalty_points"
        case visitorCustomerDateEnd = "visitor_customer_date_end"
        case visitorCustomerDateStart = "visitor_customer_date_start"
        case visitorCustomerGender = "visitor_customer_gender"
        case visitorCustomerLocale = "visitor_customer_locale"
        case visitorCustomerLocationCity = "visitor_customer_location_city"
        case visitorCustomerLocationCountry = "visitor_customer_location_country"
        case visitorCustomerLocationId = "visitor_customer_location_id"
        case visitorCustomerLocationRegion = "visitor_customer_location_region"
        case visitorCustomerLocationType = "visitor_customer_location_type"
        case visitorCustomerNameTitle = "visitor_customer_name_title"
        case visitorCustomerOwner = "visitor_customer_owner"
        case visitorCustomerSegment = "visitor_customer_segment"
        case visitorCustomerStatus = "visitor_customer_status"
        case visitorCustomerType = "visitor_customer_type"
        case visitorCustomerValueArpu = "visitor_customer_value_arpu"
        case visitorCustomerValueMarpu = "visitor_customer_value_marpu"
        case visitorCustomerValueRevenue = "visitor_customer_value_revenue"
        case visitorCustomerValueSubsidy = "visitor_customer_value_subsidy"
        case visitorCustomerValueTenure = "visitor_customer_value_tenure"
        case visitorIdAccountActive = "visitor_id_account_active"
        case visitorIdAccountList = "visitor_id_account_list"
        case visitorIdAccountPrimary = "visitor_id_account_primary"
        case visitorIdAecid = "visitor_id_aecid"
        case visitorIdAnonymous = "visitor_id_anonymous"
        case visitorIdAssetActive = "visitor_id_asset_active"
        case visitorIdAssetList = "visitor_id_asset_list"
        case visitorIdAssetPrimary = "visitor_id_asset_primary"
        case visitorIdBillActive = "visitor_id_bill_active"
        case visitorIdBillList = "visitor_id_bill_list"
        case visitorIdBillPrimary = "visitor_id_bill_primary"
        case visitorIdClickAdvertising = "visitor_id_click_advertising"
        case visitorIdCms = "visitor_id_cms"
        case visitorIdCompany = "visitor_id_company"
        case visitorIdCustomer = "visitor_id_customer"
        case visitorIdDeviceAdvertising = "visitor_id_device_advertising"
        case visitorIdDevice = "visitor_id_device"
        case visitorIdDigitalProfile = "visitor_id_digital_profile"
        case visitorIdEmail = "visitor_id_email"
        case visitorIdHouse = "visitor_id_house"
        case visitorIdInteraction = "visitor_id_interaction"
        case visitorIdLandline = "visitor_id_landline"
        case visitorIdLead = "visitor_id_lead"
        case visitorIdMarketingEmail = "visitor_id_marketing_email"
        case visitorIdMarketingPush = "visitor_id_marketing_push"
        case visitorIdMarketingSocial = "visitor_id_marketing_social"
        case visitorIdRewards = "visitor_id_rewards"
        case visitorIdSim = "visitor_id_sim"
        case visitorIdSubscription = "visitor_id_subscription"
        case visitorIdTms = "visitor_id_tms"
        case visitorJourneyPhase = "visitor_journey_phase"
        case visitorLoginAuthorisationRole = "visitor_login_authorisation_role"
        case visitorLoginStatus = "visitor_login_status"
        case visitorLoginTypeMultiFactor = "visitor_login_type_multi_factor"
        case visitorLoginType = "visitor_login_type"
        case visitorPermissionAtt = "visitor_permission_att"
        case visitorPermissionFunctional = "visitor_permission_functional"
        case visitorPermissionPerformance = "visitor_permission_performance"
        case visitorPermissionStrictlyNecessary = "visitor_permission_strictly_necessary"
        case visitorPermissionTargeting = "visitor_permission_targeting"
        case visitorPermissionUpdateDate = "visitor_permission_update_date"
        case visitorPreferenceName = "visitor_preference_name"
        case visitorPreferenceValue = "visitor_preference_value"
        case visitorPreferences = "visitor_preferences"
        case visitorRoamingStatus = "visitor_roaming_status"
        case visitorTools = "visitor_tools"
        case visitorType = "visitor_type"
        
//        case journeyName = "journey_name"
//        case journeyType = "journey_type"
//        case loginDateFirst = "login_date_first"
//        case loginDateLast = "login_date_last"
//        case visitorIntent = "visitor_intent"
//        case visitorIdIntent = "visitor_id_intent"
    }
    
}
