<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<title>Hyperspace by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/sub.css" />
<link rel="stylesheet"
	href="assets/css/_default.page.client.936d3e7c.css" />
<link rel="stylesheet" href="assets/css/Textarea.1ddb1922.css " />
<!-- calendar css 연결 -->
<link rel="stylesheet" href="./assets/css/root.css">
<!-- login css 연결 -->
<link rel="stylesheet" href="./assets/css/login.css">


<script src="https://kit.fontawesome.com/481f0bd49e.js"
	crossorigin="anonymous"></script>

<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">
	<%
	MemberVO loginMember = (MemberVO) session.getAttribute("loginMember");
	%>
	<!-- Sidebar -->
	<section id="sidebar">
		<div class="Logo">
			<a href="" class="Logo_atag"><h1>
					<img src="./images/Logo_white_s.png" />
				</h1></a>
		</div>
		<div class="inner">
			<div class="profileWrap">
				<div class="profile f_left">
					<a href=""><img
						src="./images/<%if (loginMember == null) {%>profile_img.png<%} else {%><%=loginMember.getM_profile_img()%><%}%>" /></a>
					<div class="profile_txt f_right">
						<p>
							<%
							if (loginMember == null) {
							%><span id="lojo" onclick="onDisplay()">로그인/회원가입</span>

							<%
							} else {
							%><%=loginMember.getM_name()%><br> <a href="logoutCon">로그아웃</a><br>
							<span><a href="update.jsp">회원정보수정</a></span>
							<%
							}
							%>
						</p>
					</div>
				</div>
			</div>
			<nav>
				<ul>
					<li><a href="index.jsp" class="border_b">Main</a></li>
					<li><a href="#one" class="border_b">My Space</a>
						<ul class="work_list">
							<li><a href="workspace.jsp" class="list_menu">My Workspace</a></li>
							<li><a href="calendar.jsp" class="list_menu">나의 캘린더</a></li>
							<li><a href="codeCon" class="list_menu">나의 코드블럭</a></li>
						</ul>
					</li>
					<li>
						<a href="" class="border_b">Project Name</a>
						<ul class="work_list">
							<li><a href="Team_workspace.jsp" class="list_menu active">Team Workspace</a></li>
							<li><a href="Team_calendar.jsp" class="list_menu">프로젝트1 캘린더</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</section>

	<!-- Wrapper -->
	<div id="wrapper">
		<!-- One -->
		<section id="workspace" class="wrapper style2 spotlights">
			<div id="wrapper">
				<div class="fixed inset-x-0 top-0 z-9999">
					<div class="bg-brand-500" style="width: 0%; height: 0"></div>
				</div>
				<!--$-->
				<div class="flex flex-col min-h-screen">

					<!-- 헤더 -->
					<main class="mx-auto w-full grow flex flex-col max-w-screen">
						<div class="flex grow flex-col">
							<div class="relative grow">
								<div class="absolute inset-0 overflow-auto bg-gray-50">
									<div class="mx-auto p00 pt20">
										<di class="flex gap-8" data-rfd-droppable-id="root"
											data-rfd-context-id=":rs:">

										<section class="w25">
											<div class="flex items-center gap-2">
												<div class="font-medium">요청</div>
												<span class="self-end text-sm text-gray-400"> <!-- 요청 num 들어가는 곳 -->
												</span>
											</div>
											<div data-rfd-droppable-id="group-unspecified"
												data-rfd-droppable-context-id=":rs:"
												class="mt-2 flex flex-col gap-2">
												<div
													class="both-center h-85px w-full flex select-none border-2 rounded border-dashed text-sm text-gray-300">
													도착한 요청이 없습니다</div>
											</div>
											<div></div>
										</section>

										<section class="w25" data-rfd-draggable-context-id=":rs:"
											data-rfd-draggable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv">
											<div class="flex items-center gap-2">
												<div class="font-medium" tabindex="0" role="button"
													aria-describedby="rfd-hidden-text-:rs:-hidden-text-:rt:"
													data-rfd-drag-handle-draggable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv"
													data-rfd-drag-handle-context-id=":rs:" draggable="false">
													<div>계획 중</div>
												</div>
												<span class="self-end text-sm text-gray-400">(0)</span>
												<div class="grow"></div>
												<div class="relative" data-headlessui-state="">
													<button
														class="flex h-6 w-6 items-center justify-center rounded transition"
														id="headlessui-menu-button-:r11:" type="button"
														aria-haspopup="menu" aria-expanded="false"
														data-headlessui-state="">
														<i class="fa-solid fa-circle-plus"></i>
													</button>
												</div>
											</div>
											<div class="mt-2 flex flex-col gap-2"
												data-rfd-droppable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv"
												data-rfd-droppable-context-id=":rs:">
												<div
													class="both-center h-85px w-full flex border-2 rounded border-dashed text-sm text-gray-300">
													메시지를 끌어다 놓아보세요!</div>
												<div></div>
											</div>
										</section>

										<section class="w25" data-rfd-draggable-context-id=":rs:"
											data-rfd-draggable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv">
											<div class="flex items-center gap-2">
												<div class="font-medium" tabindex="0" role="button"
													aria-describedby="rfd-hidden-text-:rs:-hidden-text-:rt:"
													data-rfd-drag-handle-draggable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv"
													data-rfd-drag-handle-context-id=":rs:" draggable="false">
													<div>진행 중</div>
												</div>
												<span class="self-end text-sm text-gray-400">(0)</span>
												<div class="grow"></div>
												<div class="relative" data-headlessui-state="">
													<button
														class="flex h-6 w-6 items-center justify-center rounded transition"
														id="headlessui-menu-button-:r11:" type="button"
														aria-haspopup="menu" aria-expanded="false"
														data-headlessui-state="">
														<i class="fa-solid fa-circle-plus"></i>
													</button>
												</div>
											</div>
											<div class="mt-2 flex flex-col gap-2"
												data-rfd-droppable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv"
												data-rfd-droppable-context-id=":rs:">
												<div
													class="both-center h-85px w-full flex border-2 rounded border-dashed text-sm text-gray-300">
													메시지를 끌어다 놓아보세요!</div>
												<div></div>
											</div>
										</section>

										<section class="w25" data-rfd-draggable-context-id=":rs:"
											data-rfd-draggable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv">
											<div class="flex items-center gap-2">
												<div class="font-medium" tabindex="0" role="button"
													aria-describedby="rfd-hidden-text-:rs:-hidden-text-:rt:"
													data-rfd-drag-handle-draggable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv"
													data-rfd-drag-handle-context-id=":rs:" draggable="false">
													<div>완료</div>
												</div>
												<span class="self-end text-sm text-gray-400">(0)</span>
												<div class="grow"></div>
												<div class="relative" data-headlessui-state=""></div>
											</div>
											<div class="mt-2 flex flex-col gap-2"
												data-rfd-droppable-id="RGlyZWN0TWVzc2FnZVJvb21Hcm91cDpjbGJ1Zzh2b3IwMGR5Y3QwMWNpZXNmczNv"
												data-rfd-droppable-context-id=":rs:">
												<div
													class="both-center h-85px w-full flex border-2 rounded border-dashed text-sm text-gray-300">
													메시지를 끌어다 놓아보세요!</div>
												<div></div>
											</div>
										</section>
									</div>
								</div>
							</div>
						</div>
				</div>
				</main>
			</div>
		</section>
</body>
</html>