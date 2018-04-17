.class public final enum Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/HapticContentSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SDKStatus"
.end annotation


# static fields
.field public static final enum DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field public static final enum INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field public static final enum NOT_INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field public static final enum PAUSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field public static final enum PAUSED_DUE_TO_BUFFERING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field public static final enum PAUSED_DUE_TO_TIMEOUT:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field public static final enum PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field public static final enum STOPPED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field public static final enum STOPPED_DUE_TO_ERROR:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

.field private static final synthetic a:[Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->NOT_INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v5}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v6}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "STOPPED_DUE_TO_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED_DUE_TO_ERROR:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "PAUSED_DUE_TO_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED_DUE_TO_TIMEOUT:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "PAUSED_DUE_TO_BUFFERING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED_DUE_TO_BUFFERING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    new-instance v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const-string v1, "DISPOSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->NOT_INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED_DUE_TO_ERROR:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED_DUE_TO_TIMEOUT:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED_DUE_TO_BUFFERING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->a:[Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;
    .locals 1

    const-class v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    return-object v0
.end method

.method public static valueOfCaseInsensitive(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;
    .locals 5

    invoke-static {}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->values()[Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static values()[Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;
    .locals 1

    sget-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->a:[Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0}, [Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    return-object v0
.end method
