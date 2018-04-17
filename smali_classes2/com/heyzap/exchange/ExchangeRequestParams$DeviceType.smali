.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

.field public static final enum CONNECTED_DEVICE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

.field public static final enum CONNECTED_TV:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

.field public static final enum MOBILE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

.field public static final enum PERSONAL_COMPUTER:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

.field public static final enum PHONE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

.field public static final enum SET_TOP_BOX:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

.field public static final enum TABLET:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 114
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->MOBILE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    const-string v1, "PERSONAL_COMPUTER"

    invoke-direct {v0, v1, v4, v5}, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->PERSONAL_COMPUTER:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    const-string v1, "CONNECTED_TV"

    invoke-direct {v0, v1, v5, v6}, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->CONNECTED_TV:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v6, v7}, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->PHONE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    const-string v1, "TABLET"

    invoke-direct {v0, v1, v7, v8}, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->TABLET:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    const-string v1, "CONNECTED_DEVICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->CONNECTED_DEVICE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    const-string v1, "SET_TOP_BOX"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->SET_TOP_BOX:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    const/4 v1, 0x0

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->MOBILE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->PERSONAL_COMPUTER:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->CONNECTED_TV:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->PHONE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->TABLET:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->CONNECTED_DEVICE:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->SET_TOP_BOX:Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$DeviceType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
