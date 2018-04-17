.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

.field public static final enum ABOVE_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

.field public static final enum AD_POSITION_FULLSCREEN:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

.field public static final enum BELOW_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

.field public static final enum DEPRECATED_LIKELY_BELOW_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

.field public static final enum FOOTER:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

.field public static final enum HEADER:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

.field public static final enum SIDEBAR:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

.field public static final enum UNKNOWN:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->UNKNOWN:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    const-string v1, "ABOVE_THE_FOLD"

    invoke-direct {v0, v1, v5, v5}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->ABOVE_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    const-string v1, "DEPRECATED_LIKELY_BELOW_THE_FOLD"

    invoke-direct {v0, v1, v6, v6}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->DEPRECATED_LIKELY_BELOW_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    const-string v1, "BELOW_THE_FOLD"

    invoke-direct {v0, v1, v7, v7}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->BELOW_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    .line 123
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    const-string v1, "HEADER"

    invoke-direct {v0, v1, v8, v8}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->HEADER:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    const-string v1, "FOOTER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->FOOTER:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    const-string v1, "SIDEBAR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->SIDEBAR:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    const-string v1, "AD_POSITION_FULLSCREEN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->AD_POSITION_FULLSCREEN:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    .line 121
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->UNKNOWN:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->ABOVE_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->DEPRECATED_LIKELY_BELOW_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->BELOW_THE_FOLD:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->HEADER:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->FOOTER:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->SIDEBAR:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->AD_POSITION_FULLSCREEN:Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$AdPosition;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
