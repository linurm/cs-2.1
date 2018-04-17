.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APIFramework"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum MRAID_1:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum MRAID_2:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum ORMMA:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum VAST_1_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum VAST_1_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum VAST_2_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum VAST_2_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum VAST_3_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum VAST_3_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum VPAID_1:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

.field public static final enum VPAID_2:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;


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

    .line 97
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "VPAID_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VPAID_1:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "VPAID_2"

    invoke-direct {v0, v1, v4, v5}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VPAID_2:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "MRAID_1"

    invoke-direct {v0, v1, v5, v6}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->MRAID_1:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "ORMMA"

    invoke-direct {v0, v1, v6, v7}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->ORMMA:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "MRAID_2"

    invoke-direct {v0, v1, v7, v8}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->MRAID_2:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    .line 98
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "VAST_1_0"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_1_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "VAST_2_0"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_2_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "VAST_3_0"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_3_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "VAST_1_0_WRAPPER"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_1_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "VAST_2_0_WRAPPER"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_2_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const-string v1, "VAST_3_0_WRAPPER"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_3_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    .line 96
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    const/4 v1, 0x0

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VPAID_1:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v2, v0, v1

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VPAID_2:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->MRAID_1:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->ORMMA:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->MRAID_2:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v1, v0, v7

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_1_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_2_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_3_0:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_1_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_2_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->VAST_3_0_WRAPPER:Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->values()[Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 105
    iget v4, v3, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Leg not found. Amputated?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$APIFramework;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
