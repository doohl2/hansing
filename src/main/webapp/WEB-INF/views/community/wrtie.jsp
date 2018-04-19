<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />

<style>
.detail-title-frame {
	/* 	background:blue; */
	width: 100%;
	height: 100px;
	border-top: 2px solid #dedede;
	border-bottom: 2px solid #dedede;
}

.detail-content-frame {
	/* 	background:green; */
	width: 100%;
	height: 500px;
}
</style>

<main role="main-inner-wrapper" class="container padding-top-ninety">
<div class="sub-container none-padding">
	<div>
		<!-- snb -->
		<div class="xe-col-sm-9 sub-content">
			<div class="board_list">
				<div class="detail-frame">
					<div class="detail-title-frame">
					
							<div class="board_list">
							<table>
								<thead>
								</thead>
								<tbody>
									<tr>
										<td class="title column-title"><a href="#" class="title_text">게시글1</a> <a href="#"
											class="reply_num xe-hidden-xs" title="Replies">2</a> <span class="bd_ico_new"><i class="xi-new"></i><span class="xe-sr-only">new</span></span>
											<div class="more_info xe-visible-xs">
												<a href="#" class="mb_author">admin</a> <span class="mb_time" title="2018-04-17 00:57:36"><i class="xi-time"></i> <span	data-xe-timeago="2018-04-17 00:57:36">8분 전</span></span>
												 <span class="mb_readnum"><i class="xi-eye"></i> 1</span>
											</div></td>
										<td class="author xe-hidden-xs"><a href="#"">admin</a></td>
										<td class="xe-hidden-xs column-assent_count">0</td>
										<td class="read_num xe-hidden-xs">1</td>
										<td class="time xe-hidden-xs column-created_at">8분 전</td>
									</tr>
								</tbody>
							</table>
						</div>
					
					</div>

					<div class="detail-content-frame">

						</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>