.class public final enum Lcom/heyzap/internal/Constants$CreativeType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreativeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/internal/Constants$CreativeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/internal/Constants$CreativeType;

.field public static final enum BANNER:Lcom/heyzap/internal/Constants$CreativeType;

.field public static final enum INCENTIVIZED:Lcom/heyzap/internal/Constants$CreativeType;

.field public static final enum NATIVE:Lcom/heyzap/internal/Constants$CreativeType;

.field public static final enum STATIC:Lcom/heyzap/internal/Constants$CreativeType;

.field public static final enum UNKNOWN:Lcom/heyzap/internal/Constants$CreativeType;

.field public static final enum VIDEO:Lcom/heyzap/internal/Constants$CreativeType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    new-instance v0, Lcom/heyzap/internal/Constants$CreativeType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/heyzap/internal/Constants$CreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/internal/Constants$CreativeType;->UNKNOWN:Lcom/heyzap/internal/Constants$CreativeType;

    new-instance v0, Lcom/heyzap/internal/Constants$CreativeType;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v5, v5}, Lcom/heyzap/internal/Constants$CreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    new-instance v0, Lcom/heyzap/internal/Constants$CreativeType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6, v6}, Lcom/heyzap/internal/Constants$CreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:Lcom/heyzap/internal/Constants$CreativeType;

    new-instance v0, Lcom/heyzap/internal/Constants$CreativeType;

    const-string v1, "INCENTIVIZED"

    invoke-direct {v0, v1, v8, v7}, Lcom/heyzap/internal/Constants$CreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/internal/Constants$CreativeType;->INCENTIVIZED:Lcom/heyzap/internal/Constants$CreativeType;

    new-instance v0, Lcom/heyzap/internal/Constants$CreativeType;

    const-string v1, "BANNER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/heyzap/internal/Constants$CreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    new-instance v0, Lcom/heyzap/internal/Constants$CreativeType;

    const-string v1, "NATIVE"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/internal/Constants$CreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:Lcom/heyzap/internal/Constants$CreativeType;

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/heyzap/internal/Constants$CreativeType;

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->UNKNOWN:Lcom/heyzap/internal/Constants$CreativeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:Lcom/heyzap/internal/Constants$CreativeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->INCENTIVIZED:Lcom/heyzap/internal/Constants$CreativeType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->BANNER:Lcom/heyzap/internal/Constants$CreativeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:Lcom/heyzap/internal/Constants$CreativeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/internal/Constants$CreativeType;->$VALUES:[Lcom/heyzap/internal/Constants$CreativeType;

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

    iput p3, p0, Lcom/heyzap/internal/Constants$CreativeType;->value:I

    return-void
.end method

.method public static exchangeRequestString(Ljava/util/EnumSet;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$CreativeType;

    .line 77
    invoke-virtual {v0}, Lcom/heyzap/internal/Constants$CreativeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->STATIC:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "full_screen_interstitial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "interstitial_video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    sget-object v1, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:Lcom/heyzap/internal/Constants$CreativeType;

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$CreativeType;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$CreativeType;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/internal/Constants$CreativeType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/heyzap/internal/Constants$CreativeType;->$VALUES:[Lcom/heyzap/internal/Constants$CreativeType;

    invoke-virtual {v0}, [Lcom/heyzap/internal/Constants$CreativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/internal/Constants$CreativeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/heyzap/internal/Constants$CreativeType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
