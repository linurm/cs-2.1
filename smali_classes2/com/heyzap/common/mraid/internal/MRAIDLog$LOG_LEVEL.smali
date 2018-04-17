.class public final enum Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;
.super Ljava/lang/Enum;
.source "MRAIDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/mraid/internal/MRAIDLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

.field public static final enum debug:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

.field public static final enum error:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

.field public static final enum info:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

.field public static final enum none:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

.field public static final enum verbose:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

.field public static final enum warning:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12
    new-instance v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    const-string v1, "verbose"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    .line 13
    new-instance v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    const-string v1, "debug"

    invoke-direct {v0, v1, v3, v4}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    .line 14
    new-instance v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    const-string v1, "info"

    invoke-direct {v0, v1, v4, v5}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    .line 15
    new-instance v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    const-string v1, "warning"

    invoke-direct {v0, v1, v5, v6}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    .line 16
    new-instance v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    const-string v1, "error"

    invoke-direct {v0, v1, v6, v7}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    .line 17
    new-instance v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    const-string v1, "none"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->none:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    const/4 v1, 0x0

    sget-object v2, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    aput-object v2, v0, v1

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->none:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    aput-object v1, v0, v7

    sput-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->$VALUES:[Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->$VALUES:[Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    invoke-virtual {v0}, [Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->value:I

    return v0
.end method
