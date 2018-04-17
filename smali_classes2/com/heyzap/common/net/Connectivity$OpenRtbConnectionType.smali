.class public final enum Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;
.super Ljava/lang/Enum;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/net/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenRtbConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

.field public static final enum CELL_2G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

.field public static final enum CELL_3G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

.field public static final enum CELL_4G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

.field public static final enum CELL_UNKNOWN:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

.field public static final enum CONNECTION_UNKNOWN:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

.field public static final enum ETHERNET:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

.field public static final enum WIFI:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;


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

    .line 11
    new-instance v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    const-string v1, "CONNECTION_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CONNECTION_UNKNOWN:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    new-instance v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    const-string v1, "ETHERNET"

    invoke-direct {v0, v1, v5, v5}, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->ETHERNET:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    new-instance v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v6, v6}, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->WIFI:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    new-instance v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    const-string v1, "CELL_UNKNOWN"

    invoke-direct {v0, v1, v7, v7}, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_UNKNOWN:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    new-instance v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    const-string v1, "CELL_2G"

    invoke-direct {v0, v1, v8, v8}, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_2G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    new-instance v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    const-string v1, "CELL_3G"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_3G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    new-instance v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    const-string v1, "CELL_4G"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_4G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    sget-object v1, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CONNECTION_UNKNOWN:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->ETHERNET:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->WIFI:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_UNKNOWN:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_2G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_3G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_4G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->$VALUES:[Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->$VALUES:[Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    invoke-virtual {v0}, [Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
