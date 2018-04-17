.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentDeliveryMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

.field public static final enum PROGRESSIVE:Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

.field public static final enum STREAMING:Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 89
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    const-string v1, "STREAMING"

    invoke-direct {v0, v1, v3, v2}, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->STREAMING:Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    const-string v1, "PROGRESSIVE"

    invoke-direct {v0, v1, v2, v4}, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->PROGRESSIVE:Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    .line 88
    new-array v0, v4, [Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->STREAMING:Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->PROGRESSIVE:Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    aput-object v1, v0, v2

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$ContentDeliveryMethod;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
