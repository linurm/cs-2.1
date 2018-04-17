.class public final enum Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;
.super Ljava/lang/Enum;
.source "ExchangeRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/exchange/ExchangeRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoPlaybackMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

.field public static final enum AUTO_PLAY_SOUND_OFF:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

.field public static final enum AUTO_PLAY_SOUND_ON:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

.field public static final enum CLICK_TO_PLAY:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

.field public static final enum MOUSE_OVER:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;


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

    .line 81
    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    const-string v1, "AUTO_PLAY_SOUND_ON"

    invoke-direct {v0, v1, v5, v2}, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->AUTO_PLAY_SOUND_ON:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    const-string v1, "AUTO_PLAY_SOUND_OFF"

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->AUTO_PLAY_SOUND_OFF:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    const-string v1, "CLICK_TO_PLAY"

    invoke-direct {v0, v1, v3, v4}, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->CLICK_TO_PLAY:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    new-instance v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    const-string v1, "MOUSE_OVER"

    invoke-direct {v0, v1, v4, v6}, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->MOUSE_OVER:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    .line 80
    new-array v0, v6, [Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->AUTO_PLAY_SOUND_ON:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->AUTO_PLAY_SOUND_OFF:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->CLICK_TO_PLAY:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->MOUSE_OVER:Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->$VALUES:[Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    invoke-virtual {v0}, [Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/heyzap/exchange/ExchangeRequestParams$VideoPlaybackMethod;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
