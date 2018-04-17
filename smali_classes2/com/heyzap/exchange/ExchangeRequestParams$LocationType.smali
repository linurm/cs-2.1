.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

.field public static final enum GPS_LOCATION:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

.field public static final enum IP:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

.field public static final enum USER_PROVIDED:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 147
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    const-string v1, "GPS_LOCATION"

    invoke-direct {v0, v1, v4, v2}, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->GPS_LOCATION:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    const-string v1, "IP"

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->IP:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    const-string v1, "USER_PROVIDED"

    invoke-direct {v0, v1, v3, v5}, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->USER_PROVIDED:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    .line 146
    new-array v0, v5, [Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->GPS_LOCATION:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->IP:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->USER_PROVIDED:Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$LocationType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
