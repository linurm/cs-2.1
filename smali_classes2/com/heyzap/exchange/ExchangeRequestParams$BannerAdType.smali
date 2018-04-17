.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerAdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

.field public static final enum IFRAME:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

.field public static final enum JAVASCRIPT_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

.field public static final enum XHTML_BANNER_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

.field public static final enum XHTML_TEXT_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 131
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    const-string v1, "XHTML_TEXT_AD"

    invoke-direct {v0, v1, v5, v2}, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->XHTML_TEXT_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    const-string v1, "XHTML_BANNER_AD"

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->XHTML_BANNER_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    const-string v1, "JAVASCRIPT_AD"

    invoke-direct {v0, v1, v3, v4}, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->JAVASCRIPT_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    const-string v1, "IFRAME"

    invoke-direct {v0, v1, v4, v6}, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->IFRAME:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    .line 130
    new-array v0, v6, [Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->XHTML_TEXT_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->XHTML_BANNER_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->JAVASCRIPT_AD:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->IFRAME:Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$BannerAdType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
