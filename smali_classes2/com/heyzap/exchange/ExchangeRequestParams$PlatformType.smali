.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlatformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

.field public static final enum AMAZON:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

.field public static final enum ANDROID:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

.field public static final enum IOS:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v2, v2}, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->ANDROID:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    const-string v1, "IOS"

    invoke-direct {v0, v1, v3, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->IOS:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    const-string v1, "AMAZON"

    invoke-direct {v0, v1, v4, v4}, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->AMAZON:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->ANDROID:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->IOS:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->AMAZON:Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

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
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;
    .locals 1

    .prologue
    .line 154
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$PlatformType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
