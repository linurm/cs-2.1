.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpandableDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

.field public static final enum DOWN:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

.field public static final enum EXPANDABLE_FULLSCREEN:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

.field public static final enum LEFT:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

.field public static final enum RIGHT:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

.field public static final enum UP:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 139
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v7, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->LEFT:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3, v4}, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->RIGHT:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4, v5}, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->UP:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v5, v6}, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->DOWN:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    const-string v1, "EXPANDABLE_FULLSCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->EXPANDABLE_FULLSCREEN:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->LEFT:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    aput-object v1, v0, v7

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->RIGHT:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->UP:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->DOWN:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->EXPANDABLE_FULLSCREEN:Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    aput-object v1, v0, v6

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$ExpandableDirection;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
