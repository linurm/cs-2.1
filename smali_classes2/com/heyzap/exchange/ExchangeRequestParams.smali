.class public Lcom/heyzap/exchange/ExchangeRequestParams;
.super Lcom/heyzap/http/RequestParams;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;,
        Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;,
        Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;,
        Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;,
        Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;,
        Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;,
        Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;,
        Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;,
        Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;,
        Lcom/heyzap/exchange/ExchangeRequestParams$VideoLinearity;
    }
.end annotation


# static fields
.field private static final APP_BUNDLE:Ljava/lang/String; = "app_bundle"

.field private static final APP_PLATFORM:Ljava/lang/String; = "app_platform"

.field private static final APP_SDK_KEY:Ljava/lang/String; = "app_sdk_key"

.field private static final APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final BANNER_DIRECTION:Ljava/lang/String; = "banner_direction"

.field private static final BANNER_H:Ljava/lang/String; = "banner_h"

.field private static final BANNER_W:Ljava/lang/String; = "banner_w"

.field private static final DEVICE_CARRIER:Ljava/lang/String; = "device_carrier"

.field private static final DEVICE_CONNTYPE:Ljava/lang/String; = "device_connectiontype"

.field private static final DEVICE_DEVICETYPE:Ljava/lang/String; = "device_devicetype"

.field private static final DEVICE_DNT:Ljava/lang/String; = "device_dnt"

.field private static final DEVICE_DPI:Ljava/lang/String; = "device_dpi"

.field private static final DEVICE_H:Ljava/lang/String; = "device_h"

.field private static final DEVICE_IFA:Ljava/lang/String; = "device_ifa"

.field private static final DEVICE_LANGUAGE:Ljava/lang/String; = "device_language"

.field private static final DEVICE_MAKE:Ljava/lang/String; = "device_make"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final DEVICE_ORIENTATION:Ljava/lang/String; = "device_orientation"

.field private static final DEVICE_OS:Ljava/lang/String; = "device_os"

.field private static final DEVICE_OSV:Ljava/lang/String; = "device_osv"

.field private static final DEVICE_SCALE:Ljava/lang/String; = "device_scale"

.field private static final DEVICE_UA:Ljava/lang/String; = "device_ua"

.field private static final DEVICE_W:Ljava/lang/String; = "device_w"

.field private static final IMPRESSION_ADPOSITION:Ljava/lang/String; = "impression_adpos"

.field private static final IMPRESSION_BIDFLOOR:Ljava/lang/String; = "impression_bidfloor"

.field private static final IMPRESSION_CREATIVETYPE:Ljava/lang/String; = "impression_creativetype"

.field private static final IMPRESSION_INSTL:Ljava/lang/String; = "impression_instl"

.field private static final SDK_ADTYPE:Ljava/lang/String; = "sdk_adtype"

.field private static final SDK_API:Ljava/lang/String; = "sdk_api"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final VIDEO_DELIVERY:Ljava/lang/String; = "video_delivery"

.field private static final VIDEO_MIME:Ljava/lang/String; = "video_mime"

.field private static final VIDEO_ONLY:Ljava/lang/String; = "video_only"

.field private static final VIDEO_PLAYBACKMETHOD:Ljava/lang/String; = "video_playbackmethod"


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/heyzap/http/RequestParams;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 166
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams;

    invoke-direct {v0}, Lcom/heyzap/exchange/ExchangeRequestParams;-><init>()V

    .line 170
    iput-object p0, v0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    .line 171
    invoke-direct {v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->withDeviceInfo()Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    invoke-direct {v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->withAppInfo()Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    invoke-direct {v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->withSdkInfo()Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public static from(Lcom/heyzap/exchange/ExchangeRequestParams;)Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams;

    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;-><init>(Ljava/util/Map;)V

    .line 181
    return-object v0
.end method

.method private static getAppVersion(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 380
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 384
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 387
    :catch_0
    move-exception v0

    .line 391
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUserAgentString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    const-string v0, "Dalvik/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v0, " (Linux; U; Android "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v0, "REL"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 365
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 371
    const-string v2, " Build/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_2
    const-string v0, "1.0"

    goto :goto_0
.end method

.method private withAppInfo()Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 2

    .prologue
    .line 197
    const-string v0, "app_bundle"

    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->AMAZON:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    .line 201
    :goto_0
    const-string v1, "app_platform"

    invoke-virtual {v0}, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "app_version"

    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->getAppVersion(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v0, "app_sdk_key"

    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v1, v1, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object p0

    .line 200
    :cond_0
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->ANDROID:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    goto :goto_0
.end method

.method private withDeviceInfo()Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/common/net/Connectivity;->openRtbConnectionType(Landroid/content/Context;)Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    move-result-object v1

    .line 217
    const-string v0, "device_connectiontype"

    invoke-virtual {v1}, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 221
    sget-object v2, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->WIFI:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    if-ne v1, v2, :cond_0

    const-string v0, "WIFI"

    .line 222
    :goto_0
    const-string v1, "device_carrier"

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "device_ua"

    invoke-static {}, Lcom/heyzap/exchange/ExchangeRequestParams;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "device_make"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "device_os"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "device_osv"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->TABLET:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    .line 241
    :goto_1
    const-string v1, "device_devicetype"

    invoke-virtual {v0}, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 245
    const-string v1, "device_language"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "device_ifa"

    iget-object v1, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "device_dnt"

    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->getLimitAdTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 254
    const-string v1, "device_w"

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "device_h"

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_3

    .line 259
    const-string v1, "device_orientation"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_3
    const-string v1, "device_dpi"

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "device_scale"

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-object p0

    .line 221
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 240
    :cond_1
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->PHONE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    goto/16 :goto_1

    .line 249
    :cond_2
    const-string v0, "0"

    goto :goto_2

    .line 261
    :cond_3
    const-string v1, "device_orientation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private withSdkInfo()Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    const-string v0, "sdk_version"

    const-string v1, "9.0.6"

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->MRAID_1:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->MRAID_2:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_2_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_2_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v2}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 187
    const-string v1, "sdk_api"

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->JAVASCRIPT_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->XHTML_BANNER_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 190
    const-string v1, "sdk_adtype"

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object p0
.end method


# virtual methods
.method public asBanner(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 273
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getGenericBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getGenericBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getContainerViewSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "banner_w"

    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getContainerViewSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    const-string v0, "banner_h"

    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getGenericBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_1
    const-string v0, "banner_direction"

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->EXPANDABLE_FULLSCREEN:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->UNKNOWN:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-virtual {v0}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getPosition()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 302
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->ABOVE_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-virtual {v0}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_0
    :goto_2
    const-string v1, "impression_adpos"

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-object p0

    .line 277
    :cond_1
    const-string v0, "banner_w"

    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getGenericBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getContainerViewSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 282
    const-string v0, "banner_w"

    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getContainerViewSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "banner_h"

    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getContainerViewSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_3
    const-string v0, "banner_w"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v0, "banner_h"

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 296
    :sswitch_0
    const-string v0, "%s,%s"

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->ABOVE_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-virtual {v2}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->FOOTER:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-virtual {v2}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 299
    :sswitch_1
    const-string v0, "%s,%s"

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->ABOVE_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-virtual {v2}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->HEADER:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-virtual {v2}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public asInterstitial()Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 2

    .prologue
    .line 313
    const-string v0, "impression_instl"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v0, "impression_adpos"

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->AD_POSITION_FULLSCREEN:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "video_playbackmethod"

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->AUTO_PLAY_SOUND_ON:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "video_delivery"

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->PROGRESSIVE:Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    invoke-virtual {v1}, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "video_mime"

    const-string v1, "video/mp4"

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-object p0
.end method

.method public asVideoOnly()Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 2

    .prologue
    .line 325
    const-string v0, "video_only"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    return-object p0
.end method

.method public forCreativeTypes(Ljava/util/EnumSet;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;",
            "Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;",
            ")",
            "Lcom/heyzap/exchange/ExchangeRequestParams;"
        }
    .end annotation

    .prologue
    .line 330
    .line 332
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0, p2}, Lcom/heyzap/exchange/ExchangeRequestParams;->asBanner(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)Lcom/heyzap/exchange/ExchangeRequestParams;

    move-result-object p0

    .line 338
    :goto_0
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->INCENTIVIZED:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/exchange/ExchangeRequestParams;->asVideoOnly()Lcom/heyzap/exchange/ExchangeRequestParams;

    .line 342
    :cond_1
    const-string v0, "impression_creativetype"

    invoke-static {p1}, Lcom/heyzap/internal/Constants$CreativeType;->exchangeRequestString(Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-object p0

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/heyzap/exchange/ExchangeRequestParams;->asInterstitial()Lcom/heyzap/exchange/ExchangeRequestParams;

    goto :goto_0
.end method

.method public withBidFloor(Ljava/lang/Integer;)Lcom/heyzap/exchange/ExchangeRequestParams;
    .locals 1

    .prologue
    .line 348
    const-string v0, "impression_bidfloor"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/exchange/ExchangeRequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    return-object p0
.end method
