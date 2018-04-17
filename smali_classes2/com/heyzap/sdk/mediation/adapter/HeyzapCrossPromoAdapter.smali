.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;
.super Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.source "HeyzapCrossPromoAdapter.java"


# static fields
.field private static AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

.field private static CREATIVE_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;->CREATIVE_TYPES:Ljava/util/EnumSet;

    .line 13
    sget-object v0, Lcom/heyzap/internal/Constants$AuctionType;->CROSS_PROMO:Lcom/heyzap/internal/Constants$AuctionType;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest()Lcom/heyzap/house/request/AdRequest;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/heyzap/house/request/AdRequest;

    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;->CREATIVE_TYPES:Ljava/util/EnumSet;

    sget-object v2, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/heyzap/house/request/AdRequest;-><init>(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setAuctionType(Lcom/heyzap/internal/Constants$AuctionType;)V

    .line 29
    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "heyzap_cross_promo"

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "Heyzap Cross Promo"

    return-object v0
.end method
