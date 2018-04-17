.class public final enum Lcom/heyzap/common/vast/model/VASTDocElement;
.super Ljava/lang/Enum;
.source "VASTDocElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/common/vast/model/VASTDocElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/common/vast/model/VASTDocElement;

.field public static final enum vastAdTagURI:Lcom/heyzap/common/vast/model/VASTDocElement;

.field public static final enum vastVersion:Lcom/heyzap/common/vast/model/VASTDocElement;

.field public static final enum vastVersionAttribute:Lcom/heyzap/common/vast/model/VASTDocElement;

.field public static final enum vasts:Lcom/heyzap/common/vast/model/VASTDocElement;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/heyzap/common/vast/model/VASTDocElement;

    const-string v1, "vastVersion"

    const-string v2, "2.0"

    invoke-direct {v0, v1, v3, v2}, Lcom/heyzap/common/vast/model/VASTDocElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/vast/model/VASTDocElement;->vastVersion:Lcom/heyzap/common/vast/model/VASTDocElement;

    new-instance v0, Lcom/heyzap/common/vast/model/VASTDocElement;

    const-string v1, "vasts"

    const-string v2, "VASTS"

    invoke-direct {v0, v1, v4, v2}, Lcom/heyzap/common/vast/model/VASTDocElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/vast/model/VASTDocElement;->vasts:Lcom/heyzap/common/vast/model/VASTDocElement;

    new-instance v0, Lcom/heyzap/common/vast/model/VASTDocElement;

    const-string v1, "vastAdTagURI"

    const-string v2, "VASTAdTagURI"

    invoke-direct {v0, v1, v5, v2}, Lcom/heyzap/common/vast/model/VASTDocElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/vast/model/VASTDocElement;->vastAdTagURI:Lcom/heyzap/common/vast/model/VASTDocElement;

    .line 12
    new-instance v0, Lcom/heyzap/common/vast/model/VASTDocElement;

    const-string v1, "vastVersionAttribute"

    const-string v2, "version"

    invoke-direct {v0, v1, v6, v2}, Lcom/heyzap/common/vast/model/VASTDocElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/vast/model/VASTDocElement;->vastVersionAttribute:Lcom/heyzap/common/vast/model/VASTDocElement;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/heyzap/common/vast/model/VASTDocElement;

    sget-object v1, Lcom/heyzap/common/vast/model/VASTDocElement;->vastVersion:Lcom/heyzap/common/vast/model/VASTDocElement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/common/vast/model/VASTDocElement;->vasts:Lcom/heyzap/common/vast/model/VASTDocElement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/common/vast/model/VASTDocElement;->vastAdTagURI:Lcom/heyzap/common/vast/model/VASTDocElement;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/common/vast/model/VASTDocElement;->vastVersionAttribute:Lcom/heyzap/common/vast/model/VASTDocElement;

    aput-object v1, v0, v6

    sput-object v0, Lcom/heyzap/common/vast/model/VASTDocElement;->$VALUES:[Lcom/heyzap/common/vast/model/VASTDocElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/heyzap/common/vast/model/VASTDocElement;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/common/vast/model/VASTDocElement;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/heyzap/common/vast/model/VASTDocElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/vast/model/VASTDocElement;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/common/vast/model/VASTDocElement;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/heyzap/common/vast/model/VASTDocElement;->$VALUES:[Lcom/heyzap/common/vast/model/VASTDocElement;

    invoke-virtual {v0}, [Lcom/heyzap/common/vast/model/VASTDocElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/common/vast/model/VASTDocElement;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/heyzap/common/vast/model/VASTDocElement;->value:Ljava/lang/String;

    return-object v0
.end method
